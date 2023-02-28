FROM ubuntu:16.04
# MAINTAINER Ngoc Duy

LABEL Description="This image is used to start the ubuntu 16.04 and print out name of the OS"
RUN echo $(uname -a)