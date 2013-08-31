# ctrlaltreboot's docker file

# Base source, I prefer LTS
FROM ubuntu:12.04

MAINTAINER ctrlaltreboot "ctrlaltreboot@gmail.com"

# Freshen
RUN apt-get -y update
RUN apt-get install -y wget curl git-core opensshd-server
RUN mkdir /var/run/sshd
RUN service ssh start
RUN update-rc.d ssh defaults
EXPOSE 22
