# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :forwarded_port, guest: 8080, host: 10001
  config.vm.network :forwarded_port, guest: 3306, host: 10002
  config.vm.network :public_network

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "ispconfig::ispconfig"

    chef.json = {
      set_fqdn: "example.com",
      set_fqdn_reload_method: "reload",
      mysql_root_password: "test",
      ruby_version: "ruby-2.0.0-p0",
    }
  end
end
