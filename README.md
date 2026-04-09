<h1 align="center">🚀 End-to-End CI/CD Pipeline on Kubernetes</h1>
<p align="center">

## 📌 Project Overview
This project demonstrates a **real-time production-level CI/CD pipeline** for deploying a Java-based web application using DevOps tools.

The pipeline automates:
- Code build
- Docker image creation
- Image push to DockerHub
- Deployment on Kubernetes cluster

---

## 🏗️ Architecture Flow

Developer → GitHub → Jenkins → Ansible → DockerHub → Kubernetes → LoadBalancer → User

<img width="1776" height="738" alt="Screenshot 2026-04-06 172349" src="https://github.com/user-attachments/assets/de18fc21-6997-4693-a5c5-a943a7fc6798" />

----------------------------------------------------------------------------------
## ⚙️ Infrastructure Setup

### 🖥️ EC2 Instances

Total 6 EC2 instances were used for this project:
- Git Server
- Jenkins Server
- Ansible Server
- Kubernetes Master
- Kubernetes Worker Node 1
- Kubernetes Worker Node 2



<img width="1910" height="592" alt="Screenshot 2026-04-07 105730" src="https://github.com/user-attachments/assets/cea04251-eb88-470d-aef9-25139d0e890a" />


----------------------------------------------------------------------------------

## 🛠️ Tech Stack

- **Languages:** Java, Python  
- **Build Tools:** Maven  
- **CI/CD:** Jenkins  
- **Containerization:** Docker  
- **Configuration Management:** Ansible  
- **Orchestration:** Kubernetes  
- **Cloud:** AWS (EC2)  
- **Web Server:** Tomcat  
- **Version Control:** Git, GitHub  
- **Scripting:** Shell Scripting  
- **Monitoring:** Prometheus, Grafana  
------------------------------------------------------------------------------

## ⚙️ Step 1: Git Setup
- Launch EC2 for Git Server
- write code &
- Push code to GitHub

----------------------------------------------------------------------------------

## ⚙️ Step 2: Jenkins Setup
- Install Git
- Install Java 21
- Install Jenkins
- Install Maven (/opt)
- Set JAVA_HOME & MAVEN_HOME

<img width="1920" height="1080" alt="Screenshot (28)" src="https://github.com/user-attachments/assets/9a23c688-5efb-47d2-a6be-8ae0c4ce2659" />
n path)

----------------------------------------------------------------------------------

## 🔌 Step 3: Jenkins Plugins
- GitHub
- Maven Integration
- Publish over SSH
- Deploy to Container


<img width="1920" height="1080" alt="Screenshot (29)" src="https://github.com/user-attachments/assets/b7a9af86-9a98-42ee-8b1c-5652f57dcc3b" />

----------------------------------------------------------------------------------

## ⚙️ Step 4: CI Job (Maven Build)

- Created Jenkins Maven job
- Configured GitHub repository URL
- Set Maven goal: clean package
- Generated .war artifact
- Transferred .war file to Ansible server via SSH

----------------------------------------------------------------------------------

## ⚙️ Step 5: Ansible Setup
- Install Ansible
- Install Docker
- Give Docker permissions

----------------------------------------------------------------------------------

## 🔑 Step 6: SSH Configuration
- Create user: Ansadmin
- Enable password authentication
- Give sudo (NOPASSWD)
- Configure SSH access
----------------------------------------------------------------------------------

## 🔗 Step 7: Jenkins → Ansible Connection
- Configure Publish over SSH
- Add Ansible server credentials

<img width="1920" height="1080" alt="Screenshot (33)" src="https://github.com/user-attachments/assets/df483049-ea7b-43c2-93b3-50a5ee7d24e9" />


----------------------------------------------------------------------------------

## 🐳 Step 8: Docker Setup

### Dockerfile
FROM tomcat
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps


----------------------------------------------------------------------------------

## 📦 Step 9: Ansible Playbook - Connection to Kubernetes Node

- Successfully established connection between Ansible server and Kubernetes node
- Verified connectivity using ping module
- Enabled remote execution of deployment playbooks

<img width="1920" height="1080" alt="Screenshot (32)" src="https://github.com/user-attachments/assets/aa9d765c-4c5a-4012-b503-b98099f23d71" />


-------------------------------------------------------------------------------------
- Executed Ansible playbook (Create_image_WebAPP.yml)
- Successfully built Docker image
- Pushed Docker image to DockerHub repository
- Verified successful execution during runtime

<img width="1920" height="1080" alt="Screenshot (48)" src="https://github.com/user-attachments/assets/b0459bd9-30aa-4be2-aa32-ff3cb9846365" />

- Successfully pushed Docker image to DockerHub and verified in repository

<img width="1920" height="1080" alt="Screenshot (49)" src="https://github.com/user-attachments/assets/ab3edd07-94a8-40c9-8ceb-4285adbafa30" />

----------------------------------------------------------------------------------

## ☸️ Step 10: Kubernetes Setup
- Create Kubernetes cluster
- Configure nodes
- Keep deployment.yml & service.yml

----------------------------------------------------------------------------------

## 🚀 Step 12: CI Job

- Created Jenkins Maven job
- Configured GitHub repository for source code
- Built application using Maven (clean package)
- Executed Ansible playbook via SSH
- Automated Docker image build and push to DockerHub
- Enabled Poll SCM to trigger job on code changes
- Configured downstream job to trigger CD pipeline automatically

----------------------------------------------------------------------------------

## 🚀 Step 13: CD Job

- Created Jenkins Freestyle job
- Configured SSH connection to Ansible server
- Executed Ansible playbook via SSH
- Deployed Kubernetes manifests (deployment.yml, service.yml)
- Exposed application using LoadBalancer service
- Triggered automatically after successful CI job execution

----------------------------------------------------------------------------------
## ⚙️ Jenkins CI/CD

Two jobs (CI and CD) are configured in Jenkins.  
The pipeline is automatically triggered using Poll SCM on code changes.  
One job is currently in a running state as shown below.


<img width="1920" height="1080" alt="Screenshot (61)" src="https://github.com/user-attachments/assets/fc9a3fcc-f1db-472b-bd7a-95ac05aaf436" />


## 📦 Step 12: Deployment Playbook
<img width="1920" height="1080" alt="Screenshot (60)" src="https://github.com/user-attachments/assets/52783ba1-7024-4033-86f0-8c49147b5180" />


--------------------------------------------------------------------------------

## 📊 Monitoring  

Basic monitoring was set up using Prometheus and Grafana on Kubernetes.  
Used Helm to deploy the monitoring stack and accessed Grafana dashboards to visualize CPU, memory, and pod-level metrics.


<img width="1536" height="1024" alt="Screenshot (54)" src="https://github.com/user-attachments/assets/22ed6280-6837-4556-9ba1-8e257532100f" />

--------------------------------------------------------------------------


## 🔄 Automation Flow

🚀 Code Push → ⚙️ CI (Jenkins) → 🐳 Docker Build → 📦 DockerHub → 🚀 CD → ☸️ Kubernetes## 🎯 Conclusion

Successfully designed and implemented a complete end-to-end CI/CD pipeline using Jenkins, Ansible, Docker, and Kubernetes.

The pipeline automates the entire workflow from code integration to deployment:
- Code changes trigger CI pipeline using Poll SCM
- Application is built and packaged using Maven
- Docker image is created and pushed to DockerHub
- CD pipeline is automatically triggered using Jenkins downstream jobs
- Application is deployed on Kubernetes cluster with LoadBalancer access

Built a fully automated CI/CD pipeline for application build and deployment on Kubernetes.
----------------------------------------------------------------------------------




## 📊 Verification
<img width="1920" height="1080" alt="Screenshot (53)" src="https://github.com/user-attachments/assets/379abb8d-3542-493a-ae03-ac8ba15d44df" />

----------------------------------------------------------------------------------

## 🌐 Final Output
Application accessed via LoadBalancer


<img width="1920" height="1080" alt="Screenshot (55)" src="https://github.com/user-attachments/assets/02fad627-46c5-40f0-9b50-b7831e627bbe" />

----------------------------------------------------------------------------------

## 🐞 Issues Faced
- Tomcat not running → fixed by copying files

<img width="1920" height="1080" alt="Screenshot (39)" src="https://github.com/user-attachments/assets/3b31ae7b-d991-4f4d-b2dc-298c83be8241" />


----------------------------------------------------------------------------------

## 🔗 GitHub Repo
https://github.com/manish-mahalinge/Netflix-WebApp

----------------------------------------------------------------------------------
