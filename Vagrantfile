#Autor Thiago Araújo
#GitHub: https://github.com/mathfirewall

machines = {
  "master" => {"memory" => "1024", "cpu" => "2", "ip" => "100", "image" => " ubuntu:lunar-20221216"},
  "node01" => {"memory" => "1024", "cpu" => "2", "ip" => "101", "image" => " ubuntu:lunar-20221216"}
}

Vagrant.configure("2") do |config|

  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}"
      machine.vm.network "private_network", ip: "10.10.10.#{conf["ip"]}"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
        
      end
      machine.vm.provision "shell", path: "instalar_docker.sh"
      
      if "#{name}" == "master"
        machine.vm.provision "shell", path: "master.sh"
      else
        machine.vm.provision "shell", path: "worker.sh"
      end

    end
  end
end