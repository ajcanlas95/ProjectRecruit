#!/bin/bash

# install docker for containerized environment
sudo su -c "curl -fsSL https://get.docker.com/ | sh" 
sudo systemctl start docker

#Copy hosts file to have dns
sudo cp /vagrant/resources/hosts	/etc/hosts

sudo docker pull mariadb
sudo docker run -d -p 3306:3306 --name mariadb -e MYSQL_USER="recruit" -e MYSQL_PASSWORD="recruitpassword" -e MYSQL_DATABASE="recruitment_db" -e MYSQL_ROOT_PASSWORD="1a95d175b6f1c168ebbdebdc0361926a47da" mariadb
