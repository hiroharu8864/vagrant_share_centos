# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
   config.vm.network :forwarded_port, guest: 80, host: 8080 
end

Vagrant::Config.run do |config|
  config.vm.box = "base64"
  config.vm.define "web" do |web|
    web.vm.network :hostonly, "192.168.50.100"
    web.vm.host_name = "web"
    web.vm.provision "shell", path: "web_provision.sh"
  end
end
