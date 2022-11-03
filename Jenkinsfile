pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/swadhinroutray/spring-petclinic.git'
                sh './mvnw clean compile'
                // bat '.\\mvnw clean compile'
            }
        }
        // stage('Test') {
        //     steps {
        //         sh './mvnw test'
        //         // bat '.\\mvnw test'
        //     }

        //     post {
        //         always {
        //             junit '**/target/surefire-reports/TEST-*.xml'
        //         }
        //     }
        // }
        stage('Publish') {
            steps {
                sh './mvnw package'
                // bat '.\\mvnw package'
            }
            post {
                success {
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
    }
}

/*
pipeline {
  agent any
  
  stages {
    stage('SCM') {
      
      steps{
        git 'https://github.com/swadhinroutray/spring-petclinic.git'
      }
    }
    
    stage('Build and Test'){
        steps { 
          sh"""
          ./mvnw package
          """
        }
        post{
            success {
                          archiveArtifacts 'target/*.jar'
                      }
        }
    }
    
  //   stage('SonarQube Installation') {
  //   sh"""
  //   docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
  //   """
  //   }
  //   stage('Run Sonarqube'){
  //     sh"""
  //     echo "Running SOnarqube"
  //     """
  // }
  }
}
*/