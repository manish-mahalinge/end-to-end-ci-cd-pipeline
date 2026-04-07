# 🚀 Netflix WebApp - End-to-End CI/CD Pipeline using Jenkins, Ansible & Kubernetes

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

## 🛠️ Tech Stack
- Java
- Maven
- Jenkins
- Docker
- Ansible
- Kubernetes
- AWS EC2

----------------------------------------------------------------------------------

## ⚙️ Step 1: Git Setup
- Launch EC2 for Git Server
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
- Create Maven Job
- Add GitHub repo URL
- Maven Goal: clean package

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

<img width="1920" height="1080" alt="Screenshot (41)" src="https://github.com/user-attachments/assets/0609d770-a245-4dcc-9316-077389c516b9" />


----------------------------------------------------------------------------------

## 📦 Step 9: Ansible Playbook 

<img width="1920" height="1080" alt="Screenshot (32)" src="https://github.com/user-attachments/assets/aa9d765c-4c5a-4012-b503-b98099f23d71" />



Run Create_image_WebAPP.yml

<img width="1920" height="1080" alt="Screenshot (48)" src="https://github.com/user-attachments/assets/b0459bd9-30aa-4be2-aa32-ff3cb9846365" />

-It will Push the Image to dockerhub

<img width="1920" height="1080" alt="Screenshot (49)" src="https://github.com/user-attachments/assets/ab3edd07-94a8-40c9-8ceb-4285adbafa30" />

----------------------------------------------------------------------------------

## ☸️ Step 10: Kubernetes Setup
- Create Kubernetes cluster
- Configure nodes
- Keep deployment.yml & service.yml

----------------------------------------------------------------------------------


## 🚀 Step 12: CI Job
- Create Maven Job
- Run Ansible playbook via SSH To Push Docker Image
- 
  
## 🚀 Step 13: CD Job
- Create Freestyle Job
- Run Ansible playbook via SSH To Deploy kubernetes Manisfest.
- 
- ----------------------------------------------------------------------------------

## 📦 Step 12: Deployment Playbook
-hosts: kubernetes
remote_user: root
tasks:

name: Deploy app
command: kubectl apply -f deployment.yml
name: Deploy service
command: kubectl apply -f service.yml
name: Restart deployment
command: kubectl rollout restart deployment.apps/webshows-deployment

<img width="1920" height="1080" alt="Screenshot (60)" src="https://github.com/user-attachments/assets/52783ba1-7024-4033-86f0-8c49147b5180" />


----------------------------------------------------------------------------------

## 🔄 Automation Flow
Code push → CI → Docker build → Push → CD → Kubernetes deploy

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

(Add screenshot: error + fix)

----------------------------------------------------------------------------------

## 🔗 GitHub Repo
https://github.com/manish-mahalinge/Netflix-WebApp

----------------------------------------------------------------------------------
