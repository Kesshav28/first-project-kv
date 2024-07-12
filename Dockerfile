# This is a Dockerfile for creating an image and running an container 


FROM ubuntu:23.04

RUN apt-get udpate -y

RUN apt-get install apache2 -y 

RUN useradd keshav 

RUN mkdir /home/keshav

RUN rm -rf /var/www/html/*

COPY index.html /var/www/html/

EXPOSE 80

WORKDIR /home/keshav/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


