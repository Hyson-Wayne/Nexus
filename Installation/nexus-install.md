# **<span style="color:green">Nexus Installation and Setup on AWS EC2 Red Hat Instance</span>**

---

## **<span style="color:green">Contact Information</span>**

For further assistance or inquiries, click the buttons below:

- [![Name](https://img.shields.io/badge/Name-Nditafon%20Hyson%20Nuigho-brightgreen)](mailto:nditafonhysonn@gmail.com)
- [![Phone](https://img.shields.io/badge/Phone-%2B237679638540-brightgreen)](tel:+237679638540)
- [![Email](https://img.shields.io/badge/Email-nditafonhysonn%40gmail.com-blue)](mailto:nditafonhysonn@gmail.com)
- [![GitHub](https://img.shields.io/badge/GitHub-Hyson--Wayne-lightgrey?logo=github)](https://github.com/Hyson-Wayne)
- [![LinkedIn](https://img.shields.io/badge/LinkedIn-nditafon--hyson-blue?logo=linkedin)](https://www.linkedin.com/in/nditafon-hyson-762a6623b/)

---

## **<span style="color:green">Prerequisites</span>**
- **AWS account** with access to create EC2 instances.
- **Red Hat EC2 instance** (e.g., t2.medium) with at least **4GB RAM**.
- **Security Group** configured to allow access (e.g., port 8081 for Nexus).
- **Java OpenJDK 17** installed.

## **<span style="color:green">Step 1: Create Nexus User</span>**

**Set hostname and create a new user `nexus`:**
```bash
    # Set the hostname for the Nexus server
    sudo hostnamectl set-hostname nexus

    # Create a user 'nexus'
    sudo useradd nexus
    sudo echo "nexus ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/nexus

    # Switch to the 'nexus' user
    sudo su - nexus
```

## **<span style="color:green">Step 2: Install Java and Other Required Software</span>**

**Navigate to `/opt` and install Java JDK 17:**
```bash
    cd /opt

    # Install wget, git, nano, unzip, and Java JDK 17
    sudo yum install wget git nano unzip -y
    sudo yum install java-17-openjdk-devel -y

    # Verify Java installation
    java -version
```

## **<span style="color:green">Step 3: Download and Extract Nexus</span>**

**Download Nexus and extract it:**
```bash
    # Download Nexus
    sudo wget https://download.sonatype.com/nexus/3/nexus-3.75.1-01-unix.tar.gz

    # Extract the Nexus tar.gz file
    sudo tar -zxvf nexus-3.75.1-01-unix.tar.gz

    # Rename the Nexus directory for simplicity
    sudo mv /opt/nexus-3.75.1-01 /opt/nexus

    # Remove the tar.gz file to clean up
    sudo rm -rf nexus-3.75.1-01-unix.tar.gz
```

## **<span style="color:green">Step 4: Grant Permissions</span>**

**Set ownership and permissions:**
```bash
    # Change ownership to 'nexus' user
    sudo chown -R nexus:nexus /opt/nexus
    sudo chown -R nexus:nexus /opt/sonatype-work

    # Set directory permissions
    sudo chmod -R 775 /opt/nexus
    sudo chmod -R 775 /opt/sonatype-work
```

## **<span style="color:green">Step 5: Configure Nexus to Run as Nexus User</span>**

**Set the `run_as_user` parameter in `nexus.rc`:**
```bash
    # Configure Nexus to run as 'nexus' user
    echo 'run_as_user="nexus"' | sudo tee /opt/nexus/bin/nexus.rc
```

## **<span style="color:green">Step 6: Configure Nexus to Run as a Service</span>**

**Set up Nexus as a service:**
```bash
    # Create a symbolic link for the Nexus service
    sudo ln -s /opt/nexus/bin/nexus /etc/init.d/nexus

    # Enable and start the Nexus service
    sudo systemctl enable nexus
    sudo systemctl start nexus

    # Check the status of the Nexus service
    sudo systemctl status nexus
```

## **<span style="color:green">Access Nexus</span>**

- **Open your web browser and go to** `http://<your-ip-address>:8081`.

## **<span style="color:green">Retrieve the Admin Password</span>**

**Use the following command to display the initial admin password:**
```bash
    # View the admin password
    cat /opt/sonatype-work/nexus3/admin.password
```
