#!/bin/bash
sudo yum install java-1.8.0-openjdk-devel.x86_64 -y
sudo yum install git -y
sudo yum install maven -y
cd /mnt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.zip
unzip apache-tomcat-9.0.75.zip
rm -rf apache-tomcat-9.0.75.zip
cd /mnt/apache-tomcat-9.0.75/webapps
wget https://get.jenkins.io/war-stable/2.346.3/jenkins.war
cd /mnt/apache-tomcat-9.0.75/bin
chmod -R 777 *
./startup.sh
