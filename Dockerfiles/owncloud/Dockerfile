# ctrlaltreboot's docker file for setting up and owncloud container
# VERSION 0.0.1

# Base source, I prefer LTS
FROM ubuntu:12.04

MAINTAINER ctrlaltreboot "ctrlaltreboot@gmail.com"

# Freshen
RUN apt-get -y update
RUN apt-get install -y upstart wget curl openssh-server openssl man-db git-core nano vim screen ntp unzip net-tools
RUN wget -q http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_12.04/Release.key | apt-key add -
RUN echo 'deb http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_12.04/ /' >> /etc/apt/sources.list.d/owncloud.list
RUN apt-get -y update
RUN apt-get install -y owncloud
RUN a2enmod rewrite
RUN a2enmod headers
RUN /etc/init.d/apache2 restart

ENTRYPOINT ["/etc/init.d/apache2", "restart"]

EXPOSE 80:8881
