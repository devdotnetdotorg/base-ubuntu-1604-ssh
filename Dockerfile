# Base container Ubuntu with ssh
# Allow SSH connection to the container
# Installed mc,htop, language-pack-ru ru_RU.UTF8, zip

FROM ubuntu:16.04
MAINTAINER DevDotNet.Org <anton@devdotnet.org>

RUN apt-get update
RUN apt-get install -y mc htop zip
# Gen ru_RU
RUN apt-get install -y language-pack-ru && locale-gen ru_RU && locale-gen ru_RU.UTF-8 && update-locale 
# SSH
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
# Config SSH
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config 
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config 
RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
#
RUN sed -ri 's/^#PasswordAuthentication/PasswordAuthentication/' /etc/ssh/sshd_config
RUN sed -ri 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
#
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
# Password for root
ENV PASSWORD root 
#Set password
RUN echo 'root:$PASSWORD' |chpasswd
RUN mkdir /root/.ssh
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#Folder root
VOLUME /root
#port SSH
EXPOSE 22
# Run SSH
CMD ["/usr/sbin/sshd", "-D"]
