# System Architecture – CI/CD Demo (Staging)

## Overview
This project implements a complete CI/CD pipeline for a 2-tier web application using Docker and GitHub Actions.  
The system is deployed to a **staging environment** using Docker Compose.

## Components

### Frontend
- Technology: Static HTML
- Web Server: Nginx
- Runs inside a Docker container
- Exposed on port 8081

### Backend
- Technology: Python Flask
- Provides REST endpoints and health checks
- Runs inside a Docker container
- Exposed on port 5000

### Database
- PostgreSQL 15
- Runs as a Docker container
- Persistent data stored using Docker volumes

## Container Communication
- All containers run on the same Docker bridge network
- Backend communicates with PostgreSQL via service name
- Frontend communicates with backend via exposed port

## Architecture Flow

User → Frontend (Nginx) → Backend (Flask) → PostgreSQL

Security Best Practices

Multi-stage Docker builds
Non-root user inside backend container
Environment-based configuration
Isolated Docker network
