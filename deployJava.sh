echo "Install Java and Deploy JAR"
sudo apt update -y
sudo apt install default-jre -y
sudo apt update -y
sudo apt install default-jdk -y
javac -version

echo "Deploy Petclinic JAR"
ufw allow 8083 
java -jar /home/ubuntu/spring-petclinic/target/*.jar --server.port=8083