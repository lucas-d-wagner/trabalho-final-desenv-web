Vagrant.configure("2") do |config|
  config.vm.box = "GuiDev/Ubuntu-Rails5x"
  config.vm.box_version = "1.0.0"
  config.vm.network :forwarded_port, guest: 3000, host:3000 #rails
  config.vm.network :forwarded_port, guest: 5432, host:5433 #postgre
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
  end

end