
unless Vagrant.has_plugin?("vagrant-reload")
  raise 'Install vagrant-reload "vagrant plugin install vagrant-reload"'
end

Vagrant.configure("2") do |config|

  config.vm.box = "archlinux/archlinux"
  config.vm.hostname = "lsdp-l2"

  config.vm.network :private_network, ip: "10.0.0.2"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8081, host: 8081
  
  config.vm.synced_folder "project/", "/project"

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    ansible.verbose = true
  end

  # Shell scripts for Vagrant provisioning if you have problems with Ansible
  # config.vm.provision "update", type: "shell", path: "shell/update.sh"
  # config.vm.provision :reload
  # config.vm.provision "yay-build", type: "shell", path: "shell/build_yay.sh", privileged: false
  # config.vm.provision "yay-install", type: "shell", path: "shell/install_yay.sh"
  # config.vm.provision "install-apps", type: "shell", path: "shell/install_apps.sh"

end