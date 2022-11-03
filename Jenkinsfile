node {
  stage('SCM') {
    git branch: 'main',
    // credentialsId: '12345-1234-4696-af25-123455',
    url: 'https://github.com/swadhinroutray/spring-petclinic.git'
  }
  stage('Build Java code and deploy'){
    sh"""
     sudo java -jar target/*.jar --server.port=8083
    """
    // ./mvnw spring-boot:build-image
  }
  stage('SonarQube Installation') {
   sh"""
   docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
   """
  }
  stage('Run Sonarqube'){
    sh"""
    echo "Running SOnarqube"
    """
  }
}