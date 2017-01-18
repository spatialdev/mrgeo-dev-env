# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-16.04"

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"

  config.vm.synced_folder "shared", "/home/vagrant/shared"

  # Hadoop web UI ports
  config.vm.network :forwarded_port, guest: 50070, host: 50070 #
  config.vm.network :forwarded_port, guest: 50075, host: 50075 #
  config.vm.network :forwarded_port, guest: 50090, host: 50090 #

  # HBase web UI ports
  #config.vm.network :forwarded_port, guest: 60010, host: 60010
  #config.vm.network :forwarded_port, guest: 16010, host: 16010

  # Thrift
  #config.vm.network :forwarded_port, guest: 9090, host: 9090

  #ZooKeeper
  #config.vm.network :forwarded_port, guest: 2181, host: 2181

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 4
    # Needed for multiple CPUs
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.provision "shell",
    inline: "/bin/bash /home/vagrant/shared/devops/ansible-install.sh"
end
