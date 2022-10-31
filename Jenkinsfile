node {
  stage('SCM') {
    git branch: 'main',
    // credentialsId: '12345-1234-4696-af25-123455',
    url: 'https://github.com/swadhinroutray/spring-petclinic.git'
  }
  stage('Build Java code and deploy'){
    sh"""
        ./mvnw spring-boot:build-image &&  docker push spring-petclinic
    """
  }
  stage('SonarQube analysis') {
    def scannerHome = tool 'SonarScanner 2.14';
    withSonarQubeEnv('My SonarQube Server') { 
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}