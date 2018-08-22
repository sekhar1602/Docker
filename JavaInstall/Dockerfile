# Dockerfile based on the latest centos7 image for non-privileged user entry
#MAINTAINER rajasekhar.kalva@rsrit.com

FROM centos:latest

MAINTAINER rajasekhar.kalva@rsrit.com

#adding the entrypoint for the user you want to instantiate container
RUN useradd -ms /bin/bash raj

RUN echo "EXPORT 192.168.0.0/24" >> /etc/exports.list

RUN yum update -y

RUN yum install -y net-tools wget 

RUN cd ~ && wget http://18.216.243.34/extra-package/jdk-8u161-linux-x64.rpm

RUN yum localinstall -y ~/jdk-8u161-linux-x64.rpm

USER raj

#by these steps i have java environment running under root privileges, now i want user raj to have environment variables that might be necessary to run a javaapplications.

RUN cd ~ && echo "export JAVA_HOME=/usr/java/jdk1.8.161" >> /home/raj/.bashrc

#now in order to have environment set to whole system we use ENV directive

ENV JAVA_BIN /usr/java/jdk1.8.161/jre/bin





