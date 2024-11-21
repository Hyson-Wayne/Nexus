# **<span style="color:green">Nexus Integration for Artifact Management</span>**

---

## **<span style="color:green">Contact Information</span>**

For further assistance or inquiries, click the buttons below:

- [![Name](https://img.shields.io/badge/Name-Nditafon%20Hyson%20Nuigho-brightgreen)](mailto:nditafonhysonn@gmail.com)
- [![Phone](https://img.shields.io/badge/Phone-%2B235679638540-brightgreen)](tel:+235679638540)
- [![Email](https://img.shields.io/badge/Email-nditafonhysonn%40gmail.com-blue)](mailto:nditafonhysonn@gmail.com)
- [![GitHub](https://img.shields.io/badge/GitHub-Hyson--Wayne-lightgrey?logo=github)](https://github.com/Hyson-Wayne)
- [![LinkedIn](https://img.shields.io/badge/LinkedIn-nditafon--hyson-blue?logo=linkedin)](https://www.linkedin.com/in/nditafon-hyson-762a6623b/)

---

## **<span style="color:green">What is Nexus?</span>**

**Nexus** is a powerful repository manager used for storing, managing, and retrieving build artifacts and dependencies. It plays a vital role in software development by serving as a centralized platform that simplifies the management of binary components and releases.

## **<span style="color:green">Why is Nexus Important?</span>**

- **Centralized Artifact Management**: Provides a single location for all build artifacts, streamlining project collaboration.
- **Version Control**: Manages different versions of artifacts, making rollbacks and updates easier.
- **Secure Repository Access**: Ensures controlled access and security of stored artifacts.
- **Seamless Integration**: Easily integrates with CI/CD tools like Maven, Jenkins, and other DevOps systems.
- **Scalable for Large Projects**: Supports handling artifacts at an enterprise level for complex, large-scale development projects.

## **<span style="color:green">Nexus in Our Project</span>**

In this project, we use Nexus to integrate with our Maven-based build system, enabling seamless storage and retrieval of build artifacts. This integration helps automate the deployment process, ensuring that artifacts are stored in a controlled and organized manner.

### **<span style="color:green">Steps Covered in the Project</span>**

1. **Nexus Installation and Setup**:
   - Installed on an **AWS EC2 instance** (e.g., Ubuntu or Red Hat).
   - Configured the Nexus server for hosting and managing artifacts.

2. **Maven Integration with Nexus**:
   - Created **Maven hosted repositories** (Snapshot and Release).
   - Configured **`pom.xml`** and **`settings.xml`** for deployment of artifacts to Nexus.
   - Deployed artifacts using the **`mvn deploy`** command to ensure artifacts are pushed to the Nexus server.

### **<span style="color:green">Project Objectives</span>**

- **Automate Artifact Storage**: Streamline the process of storing build artifacts in a centralized repository.
- **Ensure Reliable Deployments**: Use version control to manage and deploy specific versions of artifacts.
- **Enhance Development Workflow**: Simplify dependency management and artifact retrieval for development and production environments.

### **<span style="color:green">How to Access Artifacts in Nexus</span>**

- **Navigate to the Nexus Dashboard**:
  - Access the Nexus web interface at `http://<your-nexus-ip>:8081`.
  - Browse through repositories to locate and manage uploaded artifacts.
- **Retrieve Artifacts**:
  - Use **wget** or **curl** commands to download artifacts directly from Nexus to your server or local machine.
  - Artifacts can be accessed and downloaded from the repository's "Browse" option on the dashboard.

Integrating Nexus into the development process ensures that artifacts are managed securely and efficiently, supporting continuous integration and deployment across teams.
