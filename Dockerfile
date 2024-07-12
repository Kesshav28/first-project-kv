# This is a Dockerfile for creating an image and running an container 


FROM ubuntu:23.04

RUN sudo apt-get udpate -y

RUN sudo apt-get install apache2 -y 

RUN sudo useradd keshav 

RUN sudo mkdir /home/keshav

RUN sudo rm -rf /var/www/html/*

COPY index.html /var/www/html/

EXPOSE 80

WORKDIR /home/keshav/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


