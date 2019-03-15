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
    stage('publish') {
      steps {
        sh '''cd /data/blueocean/HelloWorld/
sudo -s
docker build -t helloworld .
docker tag $(docker images | awk \'{print $3}\' | sed -n 2,2p) 172.16.1.243/headmaster/helloworld:v1
docker push 172.16.1.243/headmaster/helloworld:v1
'''
      }
    }
  }
}