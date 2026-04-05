# Jenkins Setup Script

This repository contains a shell script to automate the installation and setup of **Jenkins** on Debian-based Linux distributions. The script also installs **OpenJDK 21**, which is required to run Jenkins.

---

## Features

- Installs **OpenJDK 21** (Java Runtime)
- Adds the official **Jenkins stable repository**
- Installs **Jenkins**
- Enables Jenkins to **start on boot**
- Starts Jenkins service automatically
- Verifies the status of Jenkins service

---

## Prerequisites

- Debian/Ubuntu-based Linux
- `sudo` privileges
- Internet connection

---

## Usage

1. Clone the repository:

```
git clone https://github.com/dineshmeka/setup.git
cd your-repo

```
Make the script executable:

```￼
chmod +x setup_jenkins.sh

```
Run the script:

```
￼
./setup_jenkins.sh

```
Check Jenkins status:

```
￼
sudo systemctl status jenkins
Open Jenkins in your browser:
```
￼
http://localhost:8080
