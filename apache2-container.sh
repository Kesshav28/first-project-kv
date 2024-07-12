# This file is a script file for installing and running application on docker container 
sudo apt-get update -y 

#below command is for giving the execute permission on docker installation script file 
sudo chmod 777 docker-installation.sh

# below command is for installing docker on a new VM 
sudo sh docker-installation.sh

# below command is for creating an image 
sudo docker build -t new-image .

#below command is for running the container with the created Image
sudo docker run -dt --name new-app -p 80:80 new-image /bin/bash
