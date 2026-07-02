#!/bin/bash

echo "Stopping Tomcat..."
~/software/apache-tomcat-10.1.56/bin/shutdown.sh

sleep 3

echo "Building project..."
mvn clean package

echo "Removing old deployment..."
rm -rf ~/software/apache-tomcat-10.1.56/webapps/CampusConnect
rm -f ~/software/apache-tomcat-10.1.56/webapps/CampusConnect.war

echo "Copying new WAR..."
cp target/CampusConnect-1.0.war \
~/software/apache-tomcat-10.1.56/webapps/CampusConnect.war

echo "Starting Tomcat..."
~/software/apache-tomcat-10.1.56/bin/startup.sh

echo ""
echo "======================================"
echo "Deployment Successful ✅"
echo "Open:"
echo "http://localhost:8080/CampusConnect/"
echo "======================================"