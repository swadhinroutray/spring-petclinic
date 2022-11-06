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
  stage('Sonar Scanner'){
    // def scannerHome = tool 'SonarScanner 4.0';
    withSonarQubeEnv('Sonarqube') { // If you have configured more than one global server connection, you can specify its name
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}