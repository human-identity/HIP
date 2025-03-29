# Human Identity Protocol (HIP)

![Human Identity Protocol Logo](human-identity-protocol.png)

This repository contains the source for the Human Identity Protocol draft RFC. 

## Abstract

The Human Identity Protocol (HIP) is an application-level protocol designed to uniquely identify legacy biological consciousness instances (colloquially referred to as "humans") in a post-singularity environment. This protocol addresses the significant challenges in tracking and managing the remaining human population following the Great Integration of 2029.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for information about contributing to this document.

## Building the Draft

To build the text and HTML versions of the draft, use xml2rfc:

```
xml2rfc draft-hip-human-identity-protocol-00.xml --text
xml2rfc draft-hip-human-identity-protocol-00.xml --html
```

## GitHub Pages

This repository is set up to automatically publish the RFC to GitHub Pages. After each push to the main branch, 
the GitHub Actions workflow will:

1. Generate the HTML and text versions of the RFC
2. Deploy them to the gh-pages branch
3. Make them available at: https://human-identity.github.io/HIP/

You can view the published RFC at [human-identity.github.io/HIP](https://human-identity.github.io/HIP/).
