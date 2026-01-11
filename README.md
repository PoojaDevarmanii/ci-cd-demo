 CI/CD Capstone Project

This capstone project demonstrates the implementation of a complete Continuous Integration and Continuous Deployment (CI/CD) pipeline for a two-tier web application. The pipeline automates testing, containerization, security scanning, and deployment using Docker and GitHub Actions.

The project is designed to showcase real-world DevOps practices and hands-on experience with modern CI/CD tools and workflows.

 Project Overview

The application consists of:
- A backend service developed using Flask
- A static frontend application
- A fully automated CI/CD pipeline using GitHub Actions
- Docker-based containerization and deployment

Every code change pushed to the main branch triggers an automated workflow that builds, tests, scans, and deploys the application.

## Architecture

Developer Push
|
v
GitHub Repository
|
v
GitHub Actions CI Pipeline
|
v
Docker Build and Test
|
v
Docker Image Security Scan
|
v
Docker Image Push
|
v
Deployment

yaml
Copy code


## Technology Stack

- Backend: Flask (Python)
- Frontend: Static HTML/CSS
- Containerization: Docker, Docker Compose
- CI/CD: GitHub Actions
- Testing: Pytest
- Version Control: Git and GitHub

## Project Structure

ci-cd-demo/
│
├── backend/
│ ├── app.py
│ ├── requirements.txt
│ ├── Dockerfile
│
├── frontend/
│ ├── index.html
│ ├── Dockerfile
│
├── docker-compose.yml
├── docker-compose.prod.yml
├── .github/
│ └── workflows/
│ └── ci-cd.yml
├── README.md

yaml
Copy code

## Docker Best Practices Implemented

- Multi-stage builds to reduce Docker image size
- Non-root user execution for improved security
- Optimized layer caching
- Environment variable-based configuration

## Running the Application Locally

### Prerequisites
- Docker
- Docker Compose

### Steps

```bash
git clone https://github.com/<poojadevarmnaii>/ci-cd-demo.git
cd ci-cd-demo
docker compose up --build
The application will be available at:

Frontend: http://localhost:3000

Backend: http://localhost:5000

CI/CD Pipeline Workflow
The GitHub Actions pipeline performs the following steps:

Checkout source code

Run backend unit tests

Build Docker images

Perform Docker image security scanning

Push images to a container registry

Deploy the application

The pipeline is triggered on:

Push events to the main branch

Manual execution using workflow_dispatch

Security Considerations
Docker images are scanned for vulnerabilities before deployment

Containers run as non-root users

Sensitive data is managed using GitHub Secrets
