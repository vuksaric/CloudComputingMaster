Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"
  #config.vm.provision "docker"
  config.vm.provision "shell", path:"script.sh"
  config.vm.provision "file", source:"./kt1", destination:"kt"

end
