Vagrant.configure("2") do |config|
    config.vm.provider "docker" do |d|
      d.image = "jenkinsci/blueocean"
      d.has_ssh = false
      d.ports = ["8080:8080"]
      d.volumes = ["/data/jenkins:/root/.jenkins"]
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
