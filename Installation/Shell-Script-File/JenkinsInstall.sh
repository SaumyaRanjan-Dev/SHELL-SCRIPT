#!/bin/bash

# Jenkins Installation Script for Linux

# Step 1: Update the System
echo "Updating system packages..."
sudo apt-get update -y

# Step 2: Install Java
echo "Installing Java..."
sudo apt-get install openjdk-11-jdk -y

# Verify Java installation
java -version

# Step 3: Add Jenkins Repository
echo "Adding Jenkins repository..."

# Import GPG keys
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add Jenkins repository to the sources list
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Step 4: Install Jenkins
echo "Installing Jenkins..."
sudo apt-get update -y
sudo apt-get install jenkins -y

# Step 5: Start Jenkins
echo "Starting Jenkins service..."
sudo systemctl start jenkins

# Enable Jenkins to start at boot
sudo systemctl enable jenkins

# Step 6: Adjust Firewall (Optional)
echo "Allowing Jenkins port 8080 through the firewall..."
sudo ufw allow 8080
sudo ufw reload

# Step 7: Display Jenkins Initial Admin Password
echo "Jenkins installed successfully."
echo "You can access Jenkins at http://your_server_ip_or_domain:8080"
echo "The initial admin password is:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "Follow the on-screen instructions to complete the Jenkins setup."
