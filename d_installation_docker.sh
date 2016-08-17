#!/bin/bash
sudo yum update -y
cd  /etc/yum.repos.d/
echo " [dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg" >  docker.repo
sudo yum install docker-engine -y
sudo systemctl start docker
sudo docker run hello-world
sudo chkconfig docker on
