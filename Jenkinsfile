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
     archiveArtifacts 'target/*.jar'
  }
  stage('Finish'){
    sh"""
    echo "Finish"
    """
  }
}