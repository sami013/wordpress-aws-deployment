# WordPress Deployment on AWS EC2 🚀

## Overview

This project demonstrates the deployment of a **WordPress website** on an **AWS EC2 Ubuntu instance** using the **LAMP stack (Linux, Apache, MySQL, PHP)**.

The objective of this project was to gain hands-on experience with cloud infrastructure, Linux server administration, web server configuration, database setup, WordPress deployment, and Bash scripting.

---

# Technologies Used

* AWS EC2
* Ubuntu Linux
* Apache Web Server
* MySQL
* PHP
* WordPress
* Bash
* Git
* GitHub

---

# Project Structure

```text
wordpress-aws-deployment/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── scripts/
│   ├── lamp_setup.sh
│   ├── database_setup.sh
│   └── wordpress_install.sh
│
└── docs/
    ├── ec2-instance.png
    ├── security-group.png
    └── wordpress-running.png
```

---

# Architecture

```text
                    User
                      │
                 HTTP Request
                      │
                      ▼
            AWS EC2 Ubuntu Instance
                      │
        ┌─────────────┴─────────────┐
        │                           │
        ▼                           ▼
 Apache Web Server             MySQL Database
        │
        ▼
       PHP
        │
        ▼
 WordPress Application
```

---

# Features

* Automated LAMP stack installation
* Automated MySQL database creation and user configuration
* Automated WordPress download and installation
* Apache web server configuration
* Linux file ownership and permission management
* WordPress deployment on AWS EC2

---

# Scripts

| Script                 | Description                                                                                                       |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `lamp_setup.sh`        | Installs Apache, MySQL, PHP, and required PHP extensions.                                                         |
| `database_setup.sh`    | Creates the WordPress database, database user, and grants privileges.                                             |
| `wordpress_install.sh` | Downloads the latest WordPress release, copies files to the web server, and configures ownership and permissions. |

---

# Deployment Steps

## 1. Launch an EC2 Instance

Create an Ubuntu EC2 instance on AWS.

Configure the Security Group to allow:

| Port | Service |
| ---- | ------- |
| 22   | SSH     |
| 80   | HTTP    |
| 443  | HTTPS   |

---

## 2. Connect to the EC2 Instance

```bash
ssh -i your-key.pem ubuntu@<EC2-PUBLIC-IP>
```

---

## 3. Clone the Repository

```bash
git clone https://github.com/<your-github-username>/wordpress-aws-deployment.git

cd wordpress-aws-deployment
```

---

## 4. Install the LAMP Stack

```bash
chmod +x scripts/lamp_setup.sh

sudo ./scripts/lamp_setup.sh
```

---

## 5. Configure the Database

```bash
chmod +x scripts/database_setup.sh

sudo ./scripts/database_setup.sh
```

---

## 6. Install WordPress

```bash
chmod +x scripts/wordpress_install.sh

sudo ./scripts/wordpress_install.sh
```

---

## 7. Complete the WordPress Installation

Open your browser and navigate to:

```text
http://<EC2-PUBLIC-IP>
```

Complete the WordPress setup wizard by providing:

* Site Title
* Username
* Password
* Email Address

---

# Verification

Verify that the required services are running.

### Apache

```bash
sudo systemctl status apache2
```

### MySQL

```bash
sudo systemctl status mysql
```

### PHP

```bash
php -v
```

---

# Screenshots

The repository includes screenshots demonstrating the deployment process.

* EC2 Instance
* AWS Security Group Configuration
* Running WordPress Website

These images are available in the `docs/` directory.

---

# Challenges Encountered

During deployment, several common issues were encountered and resolved.

* File permission errors while copying WordPress files
* Apache ownership and permission configuration
* WordPress permalink issues after migration
* WPBakery (`js_composer`) compatibility notice on newer WordPress versions

Resolving these issues provided practical experience in Linux system administration and WordPress troubleshooting.

---

# Skills Demonstrated

* AWS EC2 provisioning
* Linux command-line administration
* Apache web server configuration
* MySQL database management
* PHP installation and configuration
* Bash scripting
* WordPress deployment
* Linux file ownership and permissions
* Git and GitHub version control
* Troubleshooting deployment issues

---

# Future Improvements

Potential enhancements for this project include:

* Configure HTTPS using Let's Encrypt SSL
* Deploy a custom domain
* Automate WordPress configuration
* Add backup and restore automation
* Use Amazon RDS instead of a local MySQL server
* Provision infrastructure using Terraform
* Configure a CI/CD pipeline for automated deployments

---

# License

This project is licensed under the MIT License. See the `LICENSE` file for more information.

