Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"
  config.vm.provision "docker"
  config.vm.provision "file", source:"../CloudComputing/zadatak1", destination:"kt1"

end
