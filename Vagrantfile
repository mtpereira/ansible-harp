# -*- mode: ruby -*-
# vi: set ft=ruby ts=2 sw=2 tw=0 et :

vmname = File.basename(File.expand_path(File.dirname(__FILE__)))

Vagrant.configure("2") do |config|
  config.vm.define vmname do |ap|
    ap.vm.box = "opscode-debian-7.2.0"
    ap.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_debian-7.2.0_chef-provisionerless.box"
    ap.vm.hostname = vmname

    ap.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end

    ap.vm.network :private_network, ip: "10.0.0.42"

    ap.vm.provision :shell do |shell|
      shell.inline = "sudo apt-get update && sudo apt-get -y install python-pycurl"
    end

#    ap.vm.provision :ansible do |ansible|
#      ansible.playbook = "harp.yml"
#      ansible.verbose = false
#    end
  end
end
