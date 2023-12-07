#! /bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt install unzip -y
sudo apt-get install openjdk-11-jdk -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.9.56886.zip
sudo unzip sonarqube-8.9.9.56886.zip -d /opt
sudo mv /opt/sonarqube-8.9.9.56886 /opt/sonarqube
sudo groupadd sonar
sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonar sonar
sudo chown sonar:sonar /opt/sonarqube -R



