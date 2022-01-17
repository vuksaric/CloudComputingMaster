Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"
  config.vm.provision "shell", path:"docker_install.sh"
  config.vm.provision "file", source: ".", destination:"app"
  config.vm.network "forwarded_port", guest:8080, host:8080
end 
