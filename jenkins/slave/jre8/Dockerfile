# Shamelessly copied from evarga/jenkins-slave
FROM java:8
MAINTAINER rj@rebooter.xyz

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y openssh-server
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd
RUN mkdir -p /var/run/sshd
RUN useradd -d /home/jenkins -m -p sagokBM69m5fQ% jenkins

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
