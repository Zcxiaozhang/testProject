FROM 172.16.1.243/headmaster/maven:v1
MAINTAINER huangll99@126.com
ADD /data/blueocean/HelloWorld/HelloWorld.jar /opt/apache-tomcat-8.0.39/webapps/
EXPOSE 8080
