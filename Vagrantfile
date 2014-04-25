# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :private_network, ip: "172.16.50.50"

  config.vm.synced_folder ".", "/vagrant_data"
  
  config.ssh.forward_agent = true


  #config.vm.provision :shell, :inline => "sudo apt-get update; sudo apt-get -y dist-upgrade"

end
