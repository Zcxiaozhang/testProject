pipeline {
  agent any
  stages {
    stage('compile') {
      steps {
        sh '''mkdir -p /data/blueocean/HelloWorld
cp Dockerfile /data/blueocean/HelloWorld
cd HelloWorld
mvn clean package
cd target
mv *.war HelloWorld.war
cp HelloWorld.war /data/blueocean/HelloWorld
'''
      }
    }
  }
}