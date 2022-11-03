node {
  stage('SCM') {
    git branch: 'main',
    // credentialsId: '12345-1234-4696-af25-123455',
    url: 'https://github.com/swadhinroutray/spring-petclinic.git'
  }
  stage('Build Java code'){
    sh"""
    ./mvnw package
    """
    // ./mvnw spring-boot:build-image
  }
  stage('Archive Jar') {
  //  sh"""
  //  docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
  //  """
     archiveArtifacts 'target/*.jar'
  }
  stage('Finish'){
    sh"""
    echo "Finish"
    """
  }
}