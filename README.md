# WebApp-Nodejs

A simple Node.js web application demonstrating backend development and deployment via CI/CD pipelines.

## 🚀 Features
- Built with Node.js and Express.js
- Supports REST APIs
- Containerized with Docker
- Ready for CI/CD integration and Kubernetes deployment

## 📁 Project Structure
/WebApp-Nodejs
│
├── webapp.js          # Main Node.js application
├── package.json       # Node.js dependencies
├── Dockerfile         # Docker container definition
├── Jenkinsfile        # Jenkins pipeline for CI/CD
└── README.md          # Project description

## 💻 Prerequisites
- Node.js v16+
- Docker
- Jenkins (optional, for CI/CD)
- Kubernetes cluster (optional)

## ⚙️ Running Locally
1. Install dependencies:
2. Start the app:
3. Open in browser:

## 🐳 Docker
1. Build Docker image:
2. Run container:

## 🔄 CI/CD Pipeline
- **Jenkins** automates:
  1. Pull code from GitHub
  2. Build Docker image
  3. Push to Docker registry
  4. updata the image version at deploy repo.

## 📌 Author
AbdelRahman Ahmed