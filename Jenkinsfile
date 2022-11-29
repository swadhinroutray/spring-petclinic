node {
  stage('SCM') {
    git branch: 'main',
    // credentialsId: '12345-1234-4696-af25-123455',
    url: 'https://github.com/swadhinroutray/spring-petclinic.git'
  }
  stage('Package'){
    sh"""
    ./mvnw package
    """
  }
  stage('Archive Jar') {
    archiveArtifacts 'target/*.jar'
    sh"""
    cp -r target/*.jar /tmp/spring
    """
  }
  // stage('Sonar Scanner'){
  //   withSonarQubeEnv(installationName: 'sq1') { // If you have configured more than one global server connection, you can specify its name
  //     sh "./mvnw clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar"      // sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar'
  //   }
  // }
  stage('Ansible Deploy'){
    ansiblePlaybook become: true, becomeUser: null, credentialsId: 'deploy', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.inv', playbook: 'deployplaybook.yml', sudoUser: null 
  }
}