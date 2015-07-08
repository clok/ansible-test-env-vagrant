# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

VAGRANT_FILE_API_VERSION = 2

Vagrant.configure(VAGRANT_FILE_API_VERSION) do |config|

  # This is the primary VM we will test from
  config.vm.define 'ansible' do |nexus|
    nexus.vm.box       = 'ubuntu/trusty64'
    nexus.vm.host_name = 'ansible'
    nexus.vm.network "private_network", ip: "192.168.10.11"
    nexus.vm.provision "ansible" do |ansible|
      ansible.limit          = 'ansible'
      ansible.inventory_path = 'provision'
      ansible.playbook       = "provision.yml"
    end
  end

  config.trigger.after :destroy do
    # cleaning up known_host file
    `sed -n '/192\.168\.10/!p' ~/.ssh/known_hosts > ~/.ssh/known_hosts.new; mv ~/.ssh/known_hosts.new ~/.ssh/known_hosts`
  end

end
