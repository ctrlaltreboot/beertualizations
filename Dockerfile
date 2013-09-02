# ctrlaltreboot's docker file

# Base source, I prefer LTS
FROM ubuntu:12.04

MAINTAINER ctrlaltreboot "ctrlaltreboot@gmail.com"

# Freshen
RUN apt-get -y update
RUN apt-get install -y upstart wget curl git-core openssh-server
RUN mkdir /var/run/sshd
RUN useradd -d /home/"$DOCKER_USER" -m -s /bin/bash
RUN mkdir /home/"$DOCKER_USER"/.ssh
ADD "$DOCKER_SSH_PUB" /home/"$DOCKER_USER"/.ssh/id_rsa.pub
RUN chown -R "$DOCKER_USER"."$DOCKER_USER" /home/"$DOCKER_USER"/.ssh
RUN chmod 700 /home/"$DOCKER_USER"/.ssh
RUN chmod 644 /home/"$DOCKER_USER"/.ssh/id_rsa.pub
