Vagrant.configure(2) do |config|
#vbguest plugin fails on my machine so that is why these commands are here
config.vbguest.auto_update = false
config.vbguest.no_remote = true
config.vm.provider "virtualbox" do |v|
v.memory =2048
v.cpus = 4
end
config.vm.box = "ubuntu/trusty32"
config.vm.hostname = "joey.be"
config.vm.network "forwarded_port", guest:80, host:8060
config.vm.post_up_message
config.vm.provision "shell",path:"provision_apache.sh"
config.vm.provision "shell",path:"provision_php.sh"





end
