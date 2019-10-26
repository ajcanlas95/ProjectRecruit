#!/bin/bash

# install docker for containerized environment
sudo su -c "curl -fsSL https://get.docker.com/ | sh" 
sudo systemctl start docker

#Copy hosts file to have dns
sudo cp /vagrant/resources/hosts	/etc/hosts
