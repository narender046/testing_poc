# Jenkins installation on Ubuntu 
# First we have to install java and set the path 

sudo apt-get update && sudo apt-get upgrade -y 
sudo apt install default-jdk
sudo apt install default-jre

# To check if Java has been installed successfully on Ubuntu

java -version

# Configure JAVA_HOME on Ubuntu
# Locate your Java installation on Ubuntu, issue the following command and copy the location provided

update-alternatives --config java

# Add JAVA_HOME to the environment

sudo nano /etc/environment

# Paste the JAVA_HOME assignment at the bottom of the file:

JAVA_HOME="JAVA_HOME="/lib/jvm/java-11-openjdk-amd64/bin/java"

# To test is Java Home is ste up or not 

echo $JAVA_HOME

# After java now we will install jenkins 

sudo apt-get update
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

# to check if jenkins is installed and started 

systemctl status jenkins 

# Install git also 

sudo apt install git
