# 🚀 DevSecOps Test App

A deliberately vulnerable web application built with **Django** to help developers and DevOps engineers practice **DevSecOps principles**, security testing, and secure CI/CD pipelines.

---

## 📌 Overview

This project simulates real-world web vulnerabilities so you can:

* Practice identifying security flaws
* Learn OWASP Top 10 vulnerabilities
* Integrate security into DevOps workflows
* Test SAST, DAST, and container scanning tools

---

## 🛠️ Tech Stack

* Python 3
* Django
* Docker & Docker Compose
* HTML / CSS / JavaScript

---

## ⚙️ Installation

### 🔹 Method 1: Quick Setup (Recommended)

```bash
git clone <your-repo-url>
cd DevSecOps-_Test_App

bash installer.sh
python3 manage.py migrate
python3 manage.py runserver
```

Open your browser:

```
http://127.0.0.1:8000
```

---

### 🔹 Method 2: Manual Installation

```bash
git clone <your-repo-url>
cd DevSecOps-_Test_App

pip install -r requirements.txt
python3 manage.py migrate
python3 manage.py runserver
```

---

### 🔹 Method 3: Using setup.py

```bash
pip3 install .
python3 manage.py migrate
python3 manage.py runserver
```

---

## 🐳 Docker Setup

### Run with Docker

```bash
docker pull pygoat/pygoat:latest
docker run --rm -p 8000:8000 pygoat/pygoat:latest
```

---

### Run with Docker Compose

```bash
docker-compose up
```

Run in background:

```bash
docker-compose up -d
```

---

### Build Locally

```bash
git clone https://github.com/adeyosemanputra/pygoat.git
cd pygoat

docker build -t pygoat .
docker run --rm -p 8000:8000 pygoat
```

---

## 📂 Project Structure

```
.
├── chatbot/           # Chatbot functionality
├── pygoat/            # Main vulnerable application
├── docs/              # Documentation
├── Solutions/         # Challenge solutions
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
```

---

## 🧪 Learning Goals

* Web application security fundamentals
* OWASP Top 10 vulnerabilities
* DevSecOps practices
* Security tools integration (SAST / DAST)
* Container security

---

## ❌ Uninstallation

### Linux (Debian/Ubuntu)

```bash
bash ./uninstaller.sh
```

### Other Systems

```bash
python3 uninstaller.py
```

---

## 🤝 Contributing

Contributions are welcome!

Steps:

1. Fork the repository
2. Create a new branch
3. Commit your changes
4. Open a Pull Request

---

## ⚠️ Disclaimer

This application contains intentional security vulnerabilities for **educational purposes only**.

**Do NOT use in production environments.**

---

## 👨‍💻 Author

Walid Badry

---
