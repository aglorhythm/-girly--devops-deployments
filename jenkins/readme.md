# Jenkins deployments on AWS 🌸
## With Terraform and Ansible, using Nginx server 🌸

# Jenkins Deployments on AWS 🌸
## With Terraform and Ansible, using Nginx server 🌸

Welcome to the Jenkins Deployment Project! This repository is dedicated to demonstrating how to deploy Jenkins on AWS using Terraform and Ansible, with Nginx serving as a reverse proxy. It’s an efficient, and streamlined approach to setting up a robust CI/CD environment.

## Project Overview 🌼

This project leverages the power of Terraform for infrastructure provisioning and Ansible for configuration management to deploy a fully functional Jenkins server. Nginx is configured to enhance security and manage traffic, ensuring that Jenkins runs smoothly and securely.

## Why Jenkins? 🌷

Jenkins is a powerhouse in the world of continuous integration and continuous delivery (CI/CD). It offers:

- **Extensibility**: Jenkins is highly customizable with a vast ecosystem of plugins.
- **Versatility**: It supports all types of software development platforms and languages.
- **Community Support**: Being an open-source tool, it has a strong community providing robust support and continuous updates.

## Deployment Architecture 🌹

This project includes a detailed deployment architecture that illustrates how Jenkins interacts with AWS services, Ansible, and Nginx. Below is the architecture diagram:

![Jenkins Deployment Architecture](https://res.cloudinary.com/dhugrtkns/image/upload/v1715896366/alrdb4ptel6zunp7twtd.png)

## How It Works 🌻

- **Terraform**: Provisions the AWS infrastructure, including EC2 instances, security groups, and networking components.
- **Ansible**: Automates the configuration of the EC2 instances, installs Jenkins, and sets up Nginx as a reverse proxy.
- **Nginx**: Acts as a front door for Jenkins, handling HTTPS requests and providing an additional layer of security.

## Getting Started 🎀

To get this Jenkins environment up and running on your own AWS account, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/jenkins-deployments.git
   cd jenkins-deployments
