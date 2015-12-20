FROM ubuntu:14.04

MAINTAINER ostrev

# Freshen
RUN apt-get -y update
RUN apt-get install -y upstart wget curl openssh-server openssl man-db nano vim screen ntp unzip net-tools
RUN wget -q http://download.opensuse.org/repositories/home:/indimail/xUbuntu_12.04/Release.key -O - | apt-key add -
RUN echo 'deb http://download.opensuse.org/repositories/home:/indimail/xUbuntu_12.04/ /' >> /etc/apt/sources.list.d/indimail.list
RUN apt-get -y update
RUN useradd -r -U mysql
RUN apt-get install -y indimail
