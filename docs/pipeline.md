# CI/CD Pipeline Flow – GitHub Actions

## Trigger
- Pipeline triggers automatically on every push to the `main` branch.

## Pipeline Stages

### 1. Source Code Checkout
- GitHub Actions checks out the latest code from the repository.

### 2. Docker Image Build
- Backend Docker image is built using a multi-stage Dockerfile.
- Frontend Docker image is built using Nginx base image.

### 3. Unit Testing
- Backend unit tests are executed inside the Docker container using pytest.
- Pipeline fails immediately if tests fail.

### 4. Security Scanning
- Trivy is used to scan Docker images for vulnerabilities.
- Scan results are logged in GitHub Actions.

### 5. Image Tagging & Push
- Images are tagged as `staging`
- Images are pushed to Docker Hub registry

### 6. Deployment (Staging)
- Updated images are pulled
- Old containers are stopped
- New containers are started using Docker Compose
- Health check verifies deployment success

## Pipeline Outcome
- Successful pipeline results in an updated staging environment
- Failed pipeline prevents deployment
