# JIRA Software

Dockerfile for JIRA Software running on Alpine Linux.

## Compatibility of JIRA and Alpine Linux

The JIRA installer used in this Docker image is only compatible with Alpine with

- glibc
- bash

The glibc part of the image is copied from https://github.com/frol/docker-alpine-glibc/blob/master/Dockerfile

Bash is installed via apk.

## Current Issues

There are a few issues with the current setup.

- The JIRA installer is not tested with Alpine Linux by Atlassian.
- Creating the `jira` user does not succeed during installation, we need to create the user ourselves and `chown` the directories needed.