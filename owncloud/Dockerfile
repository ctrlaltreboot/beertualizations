FROM ubuntu:14.10

MAINTAINER ostrev

# Freshen
RUN echo 'deb http://archive.ubuntu.com/ubuntu/ utopic restricted universe multiverse' > /etc/apt/sources.list.d/ubuntu-more.list
RUN wget -q http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_14.10/Release.key -O - | apt-key add -
RUN echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/xUbuntu_14.10/ /' > /etc/apt/sources.list.d/owncloud.list

RUN apt-get -y update
RUN apt-get install -y wget curl openssh-server openssl man-db git-core nano vim screen ntp unzip net-tools php5 php5-gd php5-sqlite php5-common php5-mysql smbclient libcurl3 php5-curl apache2 php-pear owncloud

RUN a2enmod rewrite
RUN a2enmod headers
