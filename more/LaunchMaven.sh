#!/bin/bash

# This bash file is used to install and configure maven on a RedHat EC2 instance

# Update system and install necessary packages
sudo yum update -y
sudo yum install wget nano tree unzip git-all java-11-openjdk-devel java-1.8.0-openjdk-devel -y

# Download and install Maven
cd /opt || exit
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip
sudo unzip apache-maven-3.9.6-bin.zip
sudo rm -rf apache-maven-3.9.6-bin.zip
sudo mv apache-maven-3.9.6/ maven

# Set Environmental Variable for the current user
echo "export M2_HOME=/opt/maven" >> ~/.bash_profile
echo "export PATH=\$PATH:\$M2_HOME/bin" >> ~/.bash_profile

# Set Environmental Variable for all users
echo "export M2_HOME=/opt/maven" | sudo tee -a /etc/profile
echo "export PATH=\$PATH:\$M2_HOME/bin" | sudo tee -a /etc/profile

# Activate Maven environment
source /etc/profile

# Check Maven version
mvn -version