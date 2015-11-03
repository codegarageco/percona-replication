# -*- coding: utf-8 -*-
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box_url = "http://vagrant.gygadmin.com/trusty64.json"
  config.vm.box = "getyourguide/trusty64"
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  [ :master, :slave ].each_with_index do |role, index|
    config.vm.define :"#{role}_percona" do |config_int|
      config_int.vm.network "private_network", ip: "192.168.0.#{index + 10}"
      config_int.vm.provision :chef_solo do |chef|
        chef.json = {
          percona: {
            server: {
              bind_address: "192.168.0.#{index + 10}",
              server_id: "#{index + 10}",
              role: "#{role}",
              replication: {
                host: "192.168.0.10"
              }
            }
          }
        }
        chef.run_list = [ "cg_percona" ]
      end
    end
  end

end
