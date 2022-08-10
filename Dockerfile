FROM centos:7.9.2009
RUN yum update -y && \
    yum install -y which make wget gcc
