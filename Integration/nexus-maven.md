# **<span style="color:green">Maven & Nexus Integration</span>**
In this setup, we are integrating Maven with Nexus to generate artifacts and upload them to our Nexus repository for efficient artifact management, versioning, and deployment.

---

## **<span style="color:green">Contact Information</span>**

For further assistance or inquiries, click the buttons below:

- [![Name](https://img.shields.io/badge/Name-Nditafon%20Hyson%20Nuigho-brightgreen)](mailto:nditafonhysonn@gmail.com)
- [![Phone](https://img.shields.io/badge/Phone-%2B235679638540-brightgreen)](tel:+235679638540)
- [![Email](https://img.shields.io/badge/Email-nditafonhysonn%40gmail.com-blue)](mailto:nditafonhysonn@gmail.com)
- [![GitHub](https://img.shields.io/badge/GitHub-Hyson--Wayne-lightgrey?logo=github)](https://github.com/Hyson-Wayne)
- [![LinkedIn](https://img.shields.io/badge/LinkedIn-nditafon--hyson-blue?logo=linkedin)](https://www.linkedin.com/in/nditafon-hyson-762a6623b/)

---


## **<span style="color:green">Integration Steps</span>**

## **<span style="color:green">1. Create a Maven Hosted Repository</span>**

- **Go to the Nexus web server and click on the Settings icon at the top.**
- **Click on "Repositories" in the menu.**
- **Click on the "Create repositories" button at the top.**
- **Select "maven2 (hosted)" as the repository type.**
- **Input the desired name for the repository.**
- **Choose the version policy (Release or Snapshot) according to your requirements.**
- **Select "Allow redeploy" in the Deployment policy if you want to allow updates to existing artifacts.**
- **Click on "Create Repository" to finalize the creation process.**

## **<span style="color:green">2. Copy Repository URLs</span>**

- **Snapshot URL: ==** 
- **Release URL: ==** 

## **<span style="color:green">3. Add URLs in `distributionManagement` Tag in `pom.xml`</span>**

1. **Edit the `pom.xml` file:**
    ```bash
    vi pom.xml
    ```

2. **Locate the `distributionManagement` tag and add Snapshot and Release URLs.**

3. **Save and exit.**

## **<span style="color:green">4. Configure Nexus Login Credentials in `settings.xml`</span>**

1. **Access the `settings.xml` file:**
    ```bash
    sudo vi /opt/maven/conf/settings.xml
    ```

2. **Add the following configuration before the closing `</settings>` tag:**
    ```xml
    <server>
        <id>nexus</id>
        <username>admin</username>
        <password>admin123</password>
    </server>
    ```

3. **Save and exit.**

## **<span style="color:green">5. Run Commands in Maven</span>**

- **Run the following Maven commands:**

    ```bash
    # To clean up old artifacts and generate new ones
    mvn clean package

    # To deploy the artifact to Nexus
    mvn deploy
    ```

## **<span style="color:green">6. Check the Nexus Repository</span>**

- **Verify the generated artifacts by navigating to the Nexus repository.**

## **<span style="color:green">Note:</span>**

- **To change the repository where the Maven artifact is located, edit the version tag in `pom.xml`:**
    ```xml
    <version>0.0.1-SNAPSHOT</version>
    ```

- **Change to:**
    ```xml
    <version>0.0.1-RELEASE</version>
    ```

- **Running `mvn deploy` uploads the artifacts to the Release repository.**

- **You can also update the version number as needed:**
    ```xml
    <version>0.0.2-RELEASE</version>
    <version>0.0.3-RELEASE</version>
    ```

## **<span style="color:green">Retrieving an Artifact from Nexus</span>**

1. **Navigate to your Nexus server.**
2. **Click on the "Browse" option.**
3. **Access the repository where the artifacts were uploaded.**
4. **Locate the desired artifact in the repository.**
5. **Click on the `.war` file (a summary will open to the left).**
6. **Click on the path link on the left to download the artifact directly.**

### **<span style="color:green">OR</span>**

**To download artifacts on your Linux server:**
- **Right-click and copy the path link.**
- **Use the `wget` command to download the artifact:**

    ```bash
    wget <link>
    ```

- **This command downloads the artifact to your server.**
