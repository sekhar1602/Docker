#This is a custom ubuntu image with sshd already installed
FROM ubuntu:xenial
MAINTAINER rdops <rajasekhar.kalva@rsrit.com>
RUN apt-get update
RUN apt-get install -y telnet openssh-server 
