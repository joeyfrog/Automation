#!/bin/bash
# Install docker, pull latest artifactory image and run it /w port forwarding

if ! docker ; then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
     sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
     sudo apt-get update
     apt-cache policy docker-ce
     sudo apt-get install -y docker-ce
fi

sudo docker pull docker.bintray.io/jfrog/artifactory-pro:latest
sudo docker run -d --name arti1 -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:latest
sudo docker ps
