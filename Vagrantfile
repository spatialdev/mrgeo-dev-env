# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-16.04"

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"

  config.vm.synced_folder "shared", "/home/vagrant/shared"

  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.network :forwarded_port, guest: 8080, host: 8080 #

  # Hadoop web UI ports
  config.vm.network :forwarded_port, guest: 50070, host: 50070 #
  config.vm.network :forwarded_port, guest: 50075, host: 50075 #
  config.vm.network :forwarded_port, guest: 50090, host: 50090 #

  # Accumulo Web UI port
  config.vm.network :forwarded_port, guest: 50095, host: 50095 #

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 8192
    vb.cpus = 4
    # Needed for multiple CPUs
    vb.customize ["modifyvm", :id, "--ioapic", "on"]

    vb.name = "localhost"
  end

  config.vm.provision "shell",
    inline: "/bin/bash /home/vagrant/shared/devops/ansible-install.sh"
end
