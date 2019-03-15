pipeline {
  agent any
  stages {
    stage('compile') {
      steps {
        sh '''cd testProject-master/HelloWorld
mvn clean package'''
      }
    }
  }
}