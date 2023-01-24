#!/bin/bash

#Autor Thiago Araújo
#GitHub: https://github.com/mathfirewall

sudo su
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker >> /vagrant/worker.sh
sudo echo "sudo apt install nfs-common -y" >> /vagrant/worker.sh
sudo echo "sleep 100" >> /vagrant/worker.sh
sudo echo "sudo mount 10.10.10.100:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data" >> /vagrant/worker.sh

sudo docker volume create app
cd /var/lib/docker/volumes/app/_data
sudo docker volume create data

sudo docker run -e MYSQL_ROOT_PASSWORD=Senha123 -e MYSQL_DATABASE=meubanco --name mysql_server -d -p 3306:3306 --mount type=volume,src=data,dst=/var/lib/mysql mysql:5.7
sudo docker service create --name app_web --replicas 15 -dt -p 80:80 --mount type=volume,src=app,dst=/app/ php:7.4-apache

sudo apt install nfs-server -y

sudo echo "/var/lib/docker/volumes/app/_data *(rw,sync,subtree_check)" >> /etc/exports
sudo exportfs -ar

#clonando a pasta do repositório
sudo git clone https://github.com/mathfirewall/Login_Cadastro_PHP.git
#copiando os arquivos para a pasta _data 
sudo cp -R Login_Cadastro_PHP/* /var/lib/docker/volumes/app/_data