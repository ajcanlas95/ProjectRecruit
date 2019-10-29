
Vagrant.configure("2") do |config|

	config.vm.define "web" do |web|
		web.vm.box = "centos/7"
		web.vm.network "private_network", ip: "192.168.0.2", virtualbox__intnet: true
		web.vm.network "forwarded_port", guest: 80, host: 8080
		web.vm.provider "virtualbox" do |webvm|
			webvm.memory = 2048
			webvm.cpus = 1
		end
		web.vm.provision "shell", path: "web/web.sh"
		web.vm.hostname = "web.test.com"
	end

	config.vm.define "db" do |db|
                db.vm.box = "centos/7"
                db.vm.network "private_network", ip: "192.168.0.3", virtualbox__intnet: true
		db.vm.provider "virtualbox" do |dbvm|
			dbvm.memory = 2048
			dbvm.cpus = 1
		end
		db.vm.provision "shell", path: "db/db.sh"
		db.vm.hostname = "db.test.com"
	end

end
