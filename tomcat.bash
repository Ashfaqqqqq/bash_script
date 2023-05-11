#!/bin/bash
#purpose:to install tomcat

#installing the java file
echo installing java file
yum install java-1.8*

sleep2

#echo downloading the tomcat packages
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz

sleep 4

#echo extrat the tar file and rename it
tar -xvf apache-tomcat-9.0.75.tar.gz 
mv apache-tomcat-9.0.75 tomcat9

echo "Start Tomcat server"
bash tomcat9/bin/startup.sh

echo tomcat service successfully installed
