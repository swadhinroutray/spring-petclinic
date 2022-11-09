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
      sh "/var/jenkins_home/sonar-scanner/sonar-scanner-3.3.0.1492-linux/bin/sonar-scanner"
      // sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar'
    }
  }
}