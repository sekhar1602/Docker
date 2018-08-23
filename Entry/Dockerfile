# Dockerfile based on the latest centos7 image for non-privileged user entry
#MAINTAINER rajasekhar.kalva@rsrit.com

FROM centos:latest

MAINTAINER rajasekhar.kalva@rsrit.com

#This RUN directive execution is a part of building the base image from docker file and no where related to instantiating the container

RUN useradd -ms /bin/bash raj

#where as CMD directive is not a part of building the image but it configures the image in such a way that when you run a container from this image this CMD directive is going to be executed on the container.
#I want to show a message when I instantiate a container from the image build on this dockerfile

ENTRYPOINT echo "This command will display this message on EVERY container that is run from it"
#ENTRYPOINT directive is similar to CMD directive that takes argument which consists of command and any of parameters or arguments you wanna pass to it, however if we use ENTRYPOINT, you are setting a concrete default application which is used every time the container created using this image even if u ask it to dosomething else. 
#Here is the difference between ENTRYPOINT and CMD, when we build an image with CMD directive, this only applies to the container that we run from this image,when we choose not to run any other application, i.e; one can change that containers behaviour based upon the application i pass to it when I instantiate container on that base image.
#eg: docker run centosl/echo:v1 /bin/echo "hello from this lab" for echo server
#image which has CMD directive with different echo message gives the output that we passed during container instantiation.
#but when we do the same thing with ENTRYPOINT dir we can't change the echo msg or output as the command specified in ENTRYPOINT is the concrete default application that is going to be used every time my container is created.

USER raj
