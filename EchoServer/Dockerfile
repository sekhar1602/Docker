# Dockerfile based on the latest centos7 image for non-privileged user entry
#MAINTAINER rajasekhar.kalva@rsrit.com

FROM centos:latest

MAINTAINER rajasekhar.kalva@rsrit.com

#This RUN directive execution is a part of building the base image from docker file and no where related to instantiating the container
RUN useradd -ms /bin/bash raj

#where as CMD directive is not a part of building the image but it configures the image in such a way that when you run a container from this image this CMD directive is going to be executed on the container.
#I want to show a message when I instantiate a container from the image build on this dockerfile

CMD "echo" "This is a custom container message"

USER raj
