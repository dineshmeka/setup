#!/bin/bash

# Update system
echo "Updating system..."
sudo apt update

# Install Java (OpenJDK 21)
echo "Installing OpenJDK 21..."
sudo apt install -y fontconfig openjdk-21-jre

# Verify Java installation
echo "Checking Java version..."
java -version

# Add Jenkins repository key
echo "Adding Jenkins key..."
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

# Add Jenkins repository
echo "Adding Jenkins repository..."
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

# Install Jenkins
echo "Installing Jenkins..."
sudo apt update
sudo apt install -y jenkins

# Enable and start Jenkins
echo "Starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Check Jenkins status
echo "Jenkins status:"
sudo systemctl status jenkins
