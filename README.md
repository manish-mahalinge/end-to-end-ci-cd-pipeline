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
- Create user: ansadmin
- Enable password authentication
- Give sudo (NOPASSWD)
- Configure SSH access

(Add screenshot: SSH / ping success)

----------------------------------------------------------------------------------

## 🔗 Step 7: Jenkins → Ansible Connection
- Configure Publish over SSH
- Add Ansible server credentials

(Add screenshot: SSH success in Jenkins)

----------------------------------------------------------------------------------

## 🐳 Step 8: Docker Setup

### Dockerfile



