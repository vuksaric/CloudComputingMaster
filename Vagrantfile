Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"
  config.vm.provision "shell", path:"docker_install.sh"
  config.vm.provision "file", source: ".", destination:"app"
end
