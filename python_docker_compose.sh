#! /bin/bash

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get -y upgrade
sudo apt-get install -y python || sudo apt-get install -y python3  python3-pip python3-setuptools 

################

sudo apt update && sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && sudo apt install docker-ce -y

sudo systemctl start docker && sudo systemctl enable docker
sudo usermod -aG docker ubuntu

###############################

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo reboot
