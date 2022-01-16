#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

sudo apt-get update
sudo apt-get install -y software-properties-common curl
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get install -y linux-image-extra-$(uname -r) 
sudo apt-get install -y docker-engine
sudo echo 'DOCKER_OPTS="-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock"' >> /etc/default/docker
sudo service docker restart
sudo usermod -aG docker vagrant
echo 'export DOCKER_HOST=tcp://localhost:4243' >> /home/vagrant/.bashrc
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` -o docker-compose
sudo chmod +x docker-compose
sudo mv docker-compose /usr/local/bin
sudo curl -L "https://github.com/docker/compose/releases/download/v1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
