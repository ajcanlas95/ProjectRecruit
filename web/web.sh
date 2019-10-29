#!/bin/bash

#installing epel-release
sudo yum install epel-release -y

#install Ansible
sudo yum install ansible -y

# Run playbook 
ansible-playbook /vagrant/web/web.yaml
