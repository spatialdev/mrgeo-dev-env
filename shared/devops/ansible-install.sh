#!/bin/bash

sudo apt-get install --assume-yes software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install --assume-yes ansible -y > /dev/null 2>&1
ansible-playbook /home/vagrant/shared/devops/playbook.yml
