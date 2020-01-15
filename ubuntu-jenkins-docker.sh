#!/bin/bash
# Install docker, pull latest jenkins image and run it /w port forwarding
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo apt-get update
#apt-cache policy docker-ce
#sudo apt-get install -y docker-ce
#sudo systemctl status docker
sudo docker pull jenkins
sudo docker run -d --name jenk1 -p 8080:8080 jenkins
sudo docker ps
echo "#### Jenkins initial admin pass: ###"
sleep 15
sudo docker exec jenk1 bash -c 'cat /var/jenkins_home/secrets/initialAdminPassword'
echo "####################################"
