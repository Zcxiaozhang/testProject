pipeline {
  agent any
  stages {
    stage('compile') {
      steps {
        sh '''cd HelloWorld
mvn clean package'''
      }
    }
  }
}