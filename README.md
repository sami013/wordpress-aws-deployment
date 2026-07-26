# WordPress Deployment on AWS EC2 🚀

## Project Overview

This project demonstrates the **manual deployment of a production WordPress website** on an **AWS EC2 Ubuntu instance** using the **LAMP stack (Linux, Apache, MySQL, PHP)**.

Instead of using one-click installers or managed hosting, the entire deployment was performed manually to understand every layer involved in hosting a WordPress application.

The project focuses on Linux administration, cloud infrastructure, web server configuration, database management, WordPress migration, troubleshooting, and deployment automation.

---

# Objectives

* Deploy a WordPress website on AWS EC2
* Learn Linux server administration
* Configure Apache, PHP and MySQL
* Automate server setup using Bash
* Practice Git & GitHub workflow
* Understand WordPress migration
* Troubleshoot real deployment issues

---

# Tech Stack

### Cloud

* AWS EC2

### Operating System

* Ubuntu Linux

### Web Server

* Apache2

### Database

* MySQL

### Backend

* PHP

### CMS

* WordPress

### Scripting

* Bash

### Version Control

* Git
* GitHub

---

# Architecture

```text
                 User
                   │
                   │ HTTP
                   ▼
        AWS EC2 Ubuntu Server
                   │
        ┌──────────┴──────────┐
        │                     │
        ▼                     ▼
   Apache Web Server      MySQL Database
        │
        ▼
       PHP
        │
        ▼
    WordPress Website
```

---

# Project Structure

```text
wordpress-aws-deployment/

├── README.md
├── LICENSE
├── .gitignore
│
├── scripts/
│   └── lamp_setup.sh
│
└── docs/
    └── screenshots/
        ├── ec2-instance.png
        ├── security-group.png
        └── wordpress-running.png
```

---

# Features

* Automated LAMP stack installation using Bash
* Apache web server configuration
* MySQL database setup
* PHP installation
* Manual WordPress deployment
* WordPress database migration
* Theme migration
* Media uploads migration
* Plugin migration
* Linux permission management
* Deployment troubleshooting

---

# Deployment Workflow

### 1. Launch EC2

* Launch Ubuntu EC2 instance
* Configure Security Group

Open ports:

* SSH (22)
* HTTP (80)
* HTTPS (443)

---

### 2. Connect to EC2

```bash
ssh -i key.pem ubuntu@<EC2-PUBLIC-IP>
```

---

### 3. Clone Repository

```bash
git clone https://github.com/<username>/wordpress-aws-deployment.git

cd wordpress-aws-deployment
```

---

### 4. Install LAMP

```bash
chmod +x scripts/lamp_setup.sh

sudo ./scripts/lamp_setup.sh
```

The script installs:

* Apache
* PHP
* MySQL

and configures the server.

---

### 5. Download WordPress

Download and extract the latest WordPress release.

Copy files into:

```text
/var/www/html
```

Configure ownership and permissions.

---

### 6. Configure Database

* Create MySQL database
* Create database user
* Grant privileges
* Import production SQL backup

---

### 7. Configure WordPress

Update:

```text
wp-config.php
```

with

* Database Name
* Username
* Password
* Host

---

### 8. Migrate Website

Copy:

* Custom Theme
* Uploads
* Plugins

Import:

* SQL Database

Update:

* siteurl
* home

Restart Apache.

---

# Challenges & Troubleshooting

During deployment several real-world issues were encountered and resolved.

## MySQL Failed to Start

**Issue**

MySQL failed to start because the EC2 instance ran out of memory.

**Cause**

The Ubuntu micro instance did not have enough RAM and the Linux OOM Killer terminated MySQL during startup.

**Resolution**

* Created a 2 GB swap file
* Enabled swap
* Configured automatic swap on reboot
* Restarted MySQL successfully

---

## GitHub SSH Authentication

**Issue**

Git push and clone failed with:

```text
Permission denied (publickey)
```

**Resolution**

* Generated SSH key
* Added public key to GitHub
* Verified authentication using

```bash
ssh -T git@github.com
```

---

## Theme Not Detected

**Issue**

WordPress did not recognize the custom theme.

**Cause**

The repository contained an additional parent directory.

**Resolution**

Moved the actual theme folder into:

```text
wp-content/themes/
```

---

## WordPress Critical Error

**Issue**

```text
Call to undefined function get_field()
```

**Cause**

The Advanced Custom Fields plugin had not been migrated.

**Resolution**

Copied the complete plugins directory from the production server.

---

## Site Redirect Issues

**Issue**

Website redirected to the production domain.

**Resolution**

Updated:

* siteurl
* home

inside the WordPress database.

---

# Skills Demonstrated

* AWS EC2 provisioning
* Linux administration
* Bash scripting
* Apache configuration
* PHP configuration
* MySQL administration
* WordPress migration
* Git & GitHub workflow
* SSH authentication
* File permission management
* Debugging PHP errors
* Database migration
* Troubleshooting production deployments

---

# Screenshots

Deployment screenshots are available in:

```text
docs/screenshots/
```

Examples include:

* EC2 Instance
* Security Group Configuration
* Running WordPress Website

---

# Future Improvements

Potential improvements include:

* HTTPS using Let's Encrypt
* Docker containerization
* Docker Compose
* Nginx reverse proxy
* Amazon RDS
* S3 media storage
* GitHub Actions CI/CD
* Terraform infrastructure automation
* Route53 custom domain
* CloudFront CDN
* Automated backups
* CloudWatch monitoring

---

# Key Learnings

Through this project I gained practical experience with:

* Deploying applications on AWS
* Linux server management
* Automating repetitive tasks using Bash
* Understanding WordPress architecture
* Managing Apache, PHP and MySQL
* Migrating production websites
* Diagnosing infrastructure issues
* Debugging WordPress and PHP errors
* Working with Git and GitHub in deployment workflows

---

# License

This project is licensed under the MIT License.

---

**Author**

**Sami Ur Rehman**

AWS • Linux • Git • Bash • WordPress • PHP • DevOps

