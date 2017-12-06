# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  config.vm.define "master" do |master|
    master.vm.box_check_update =  false
    master.vm.box = "CentOS-7-x86_64-Vagrant-1710_01.VirtualBox.box"
    master.vm.hostname = 'master'
    master.vm.network "private_network", ip: "192.168.56.10"
    master.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "4096"
    end
    master.vm.provision "shell" do |shell|
      shell.privileged = true
      shell.path = "provision.sh"
    end
  end
end
