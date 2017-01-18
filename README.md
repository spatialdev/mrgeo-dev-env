# MrGeo Development Environment

This repo contains the build scripts for setting up pseudo-distributed
 MrGeo development environment. Specifically, it builds a Ubuntu 16.04 
 Vagrant VM loaded with a "single-node" Hadoop distributed file system and 
 the Apache Spark big data processing framework.  The addition of HBase is
 under development.
 
##Getting Started

Clone this repo and at the root, boot up the VM:  

    mrgeo-server$ vagrant up
    
This will download the base Ubuntu 16.04 box, pre-install the Ansible
 DevOps framework, and provision the server.  For provisioning details 
 please review the Ansible playbook found in `shared/devops/playbook`.

You can ssh into the VM with the following Vagrant command:  

    mrgeo-server$ vagrant ssh
    
Now you are at the VM's command line interface.  

The Hadoop web-UI ports have been forwarded to the host machine, so 
 you may view the Hadoop dashboard at 
 [http://localhost:50070/](http://localhost:50070/) once the provisioning
 is complete.