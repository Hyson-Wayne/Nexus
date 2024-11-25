#!/bin/bash

# Nexus Installation and Setup on AWS EC2 Red Hat Instance

# Step 1: Create Nexus User
sudo hostnamectl set-hostname nexus
sudo useradd nexus
echo "nexus ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/nexus

# Step 2: Install Java and Required Software
cd /opt
sudo yum install wget git nano unzip -y
sudo yum install java-17-openjdk-devel -y

# Step 3: Download and Extract Nexus
sudo wget https://download.sonatype.com/nexus/3/nexus-3.74.0-05-unix.tar.gz
sudo tar -zxvf nexus-3.74.0-05-unix.tar.gz
sudo mv /opt/nexus-3.74.0-05 /opt/nexus
sudo rm -rf nexus-3.74.0-05-unix.tar.gz

# Step 4: Grant Permissions
sudo chown -R nexus:nexus /opt/nexus
sudo chown -R nexus:nexus /opt/sonatype-work
sudo chmod -R 775 /opt/nexus
sudo chmod -R 775 /opt/sonatype-work

# Step 5: Configure Nexus to Run as Nexus User
echo 'run_as_user="nexus"' | sudo tee /opt/nexus/bin/nexus.rc

# Step 6: Configure Nexus to Run as a Service
sudo ln -s /opt/nexus/bin/nexus /etc/init.d/nexus
sudo systemctl enable nexus
sudo systemctl start nexus

# Display Service Status
sudo systemctl status nexus

# Display Initial Admin Password
echo "Retrieve the admin password using the following command:"
echo "cat /opt/sonatype-work/nexus3/admin.password"

echo "Nexus installation and setup complete. Access it at http://<your-ip-address>:8081"
