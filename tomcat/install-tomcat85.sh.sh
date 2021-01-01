#!/bin/bash
# This script tested for Ubuntu18.04
# run with user that has sudo previleges to sudo or with root
cd /tmp && git clone https://github.com/ncddraq/pr01-tomcat85.git
FILES_LOCATION=/tmp/pr01-tomcat85
tomcat_url="https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.tar.gz"
cd /opt/
echo "Download Tomcat"
wget $tomcat_url
echo "Extract Tomcat file"
tar xvf apache-tomcat-8.5.61.tar.gz
echo "Change Directory name"
mv apache-tomcat-8.5.61 tomcat85
cp $FILES_LOCATION/context.xml /opt/tomcat85/webapps/manager/META-INF/
cp $FILES_LOCATION/context.xml /opt/tomcat85/webapps/host-manager/META-INF/
cp $FILES_LOCATION/tomcat-users.xml /opt/tomcat85/conf/
echo "Start Tomcat server"
bash /opt/tomcat85/bin/startup.sh
