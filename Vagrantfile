Vagrant.configure(2) do |config|
  #VM Box
  config.vm.box = "ubuntu/trusty64"
  #VM Hostname
  config.vm.hostname = "aerial-dev"
  #VM IP Address
  config.vm.network "private_network", ip: "192.168.1.10"
  #VM Provisioning
  #nginx
  config.vm.provision "shell", path: ".provision/nginx.sh"
  #PostgreSQL
  config.vm.provision "shell", path: ".provision/postgresql.sh"
  #Configuring VM Synced Folders
  config.vm.synced_folder "./", "/vagrant", disabled: true
  config.vm.synced_folder "www", "/vagrant/www"
  config.vm.synced_folder ".provision/nginx/sites-enabled", "/vagrant/nginx/sites-enabled"
  config.vm.synced_folder ".provision/postgresql/main", "/vagrant/postgresql/main"

  #VM Hardware Configuration
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
end
