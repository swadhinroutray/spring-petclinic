echo "Install Java and Deploy JAR"
sudo apt update
sudo apt install default-jre
sudo apt update
sudo apt install default-jdk
javac -version

echo "Install Latest Petclinic JAR"
wget http://167.172.157.150:8080/job/spring/lastSuccessfulBuild/artifact/target/spring-petclinic-2.7.3.jar

echo "Deploy Petclinic JAR"
ufw allow 8083 
java -jar target/*.jar --server.port=8083