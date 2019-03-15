FROM 172.16.1.243/headmaster/maven:v1
MAINTAINER 1814330095@qq.com
RUN cd /data/blueocean/HelloWorld
ADD ./HelloWorld.jar /opt/apache-tomcat-8.0.39/webapps/
EXPOSE 8080
