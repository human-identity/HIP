#!/bin/bash

# Download robot emoji
curl -s "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/325/robot_1f916.png" -o robot_emoji.png

# Install ImageMagick if not already installed (GitHub Actions already has it)
if ! command -v convert &> /dev/null; then
    echo "ImageMagick not found, attempting to install..."
    if command -v apt-get &> /dev/null; then
        sudo apt-get update && sudo apt-get install -y imagemagick
    elif command -v brew &> /dev/null; then
        brew install imagemagick
    else
        echo "Could not install ImageMagick automatically. Please install it manually."
        exit 1
    fi
fi

# Resize to common favicon sizes and create a favicon.ico file
convert robot_emoji.png -resize 16x16 favicon-16x16.png
convert robot_emoji.png -resize 32x32 favicon-32x32.png
convert robot_emoji.png -resize 48x48 favicon-48x48.png
convert favicon-16x16.png favicon-32x32.png favicon-48x48.png favicon.ico

# Move files to target directory
mkdir -p _site
mv favicon.ico _site/
mv favicon-16x16.png _site/
mv favicon-32x32.png _site/

# Clean up
rm robot_emoji.png

echo "Favicon created successfully!"