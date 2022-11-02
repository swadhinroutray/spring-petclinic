# Vagrant.configure("2") do |config|
#     config.vm.provider "docker" do |d|
      # d.image = "jenkinsci/blueocean"
      # d.has_ssh = false
      # d.ports = ["8080:8080"]
      # d.volumes = ["/data/jenkins:/root/.jenkins"]
#   end
  
#     config.vm.provider "docker" do |d|
      # d.name = "sonarqube"
      # d.image = "sonarqube:latest"
      # d.has_ssh = false
      # d.ports = ["9000:9000"]
#   end

# end
Vagrant.configure do |config|
  config.vm.define "jenkins" do
    config.vm.provider "docker" do |d|
      d.image = "jenkinsci/blueocean"
      d.has_ssh = false
      d.ports = ["8080:8080"]
      d.volumes = ["/data/jenkins:/root/.jenkins"]
    end
  end

  config.vm.define "sonarqube" do
    config.vm.provider "docker" do |d|
      d.name = "sonarqube"
      d.image = "sonarqube:latest"
      d.has_ssh = false
      d.ports = ["9000:9000"]
    end
  end
end