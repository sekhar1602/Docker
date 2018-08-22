# Dockerfile based on the latest centos7 image for non-privileged user entry
#MAINTAINER rajasekhar.kalva@rsrit.com

FROM centos:latest

MAINTAINER rajasekhar.kalva@rsrit.com

#adding the entrypoint for the user you want to instantiate container
RUN useradd -ms /bin/bash raj

RUN echo "EXPORT 192.168.0.0/24" >> /etc/exports.list

USER raj

#if the command run echo is below the USER directive then it won't be executed as from that point of USER directive the changes you want to make for base image will be running on raj user who is not privilaged so the build fails. Hence whatever the changes you want to make for base image must be done before using USER directive.

