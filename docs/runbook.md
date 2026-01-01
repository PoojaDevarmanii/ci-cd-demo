# Deployment Runbook – Staging Environment

## Prerequisites
- Docker Desktop installed and running
- Docker Compose installed
- Access to Docker Hub
- GitHub repository access

## Manual Deployment Steps

```bash
docker compose down
docker compose pull
docker compose up -d
