FROM ubuntu:14.04

MAINTAINER Malte Breuer

ENV JIRA_VERSION 7.3.0

RUN apt-get update

RUN apt-get install curl -y

# Add the varfile
ADD response.varfile /response.varfile

# Download JIRA
RUN curl -L -O https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-${JIRA_VERSION}-x64.bin
RUN chmod a+x atlassian-jira-software-${JIRA_VERSION}-x64.bin
RUN ./atlassian-jira-software-${JIRA_VERSION}-x64.bin -q -varfile response.varfile

# Volume for JIRA data
VOLUME /var/atlassian/application-data/jira/

EXPOSE 8080
