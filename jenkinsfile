node {
  stage('SCM') {
    git 'https://github.com/swadhinroutray/spring-petclinic.git'
  }
  stage('SonarQube analysis') {
    def scannerHome = tool 'SonarScanner 4.0';
    withSonarQubeEnv('My SonarQube Server') { 
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}