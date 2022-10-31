Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.provider "docker" do |d|
      d.name = "jenkins"
      d.image = "jenkinsci/blueocean",
      args: "--name jenkins -p '8000:8000' -p '5000:5000' --network=host"
    end
  end

#   config.vm.define "logs" do |logs|
#     logs.vm.provider "docker" do |d|
#       d.name = "cnt2"
#       d.image = "andyshinn/myimage2"
#       d.cmd = "syslog://logs.papertrailapp.com:55555"
#     end
#   end
# end