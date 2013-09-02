# ctrlaltreboot's docker file

# Base source, I prefer LTS
FROM ubuntu:12.04

MAINTAINER ctrlaltreboot "ctrlaltreboot@gmail.com"

# Freshen
RUN apt-get -y update
RUN apt-get install -y upstart wget curl git-core openssh-server
RUN mkdir /var/run/sshd
EXPOSE 22
