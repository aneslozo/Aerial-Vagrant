Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "aerial-dev"
  config.vm.network "private_network", ip: "192.168.1.10"

  config.vm.provision "shell", path: ".provision/provision.sh"
end
