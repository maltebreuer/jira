# JIRA Software

Dockerfile for JIRA Software running on Alpine Linux.

## Installation Quirks

- Font installation is required to run the .bin installer (as of JIRA 8)

## Compatibility of JIRA and Alpine Linux

The JIRA installer used in this Docker image needs glibc since it is compiled against it.

Installing glibc is explained in https://github.com/sgerrand/alpine-pkg-glibc