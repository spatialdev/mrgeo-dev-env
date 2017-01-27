#!/bin/bash

sudo apt-get update
sudo apt-get install python-pip -y > /dev/null
sudo pip install --upgrade-pip
sudo pip install ansible==2.2.0.0
ansible-playbook /home/vagrant/shared/devops/playbook.yml
