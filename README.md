# Conversation Analytics

## Overview

**Conversation Analytics** is a demo application designed to analyze text-based conversations. It showcases core engineering skills, including backend development, frontend integration, Dockerization, cloud deployment (AWS), and CI/CD pipelines. This project serves as a walking skeleton for engineers aiming to understand end-to-end software development.

---

## Features

- **FastAPI Backend**: Handles conversation analysis via a `/analyze` API endpoint.
- **Next.js Frontend**: Provides a simple UI to interact with the backend.
- **Dockerized**: Containerized backend and frontend for seamless deployment.
- **Cloud Ready**: Backend deployable to AWS ECS using Terraform.
- **CI/CD Pipeline**: Automated testing and deployments via GitHub Actions.

---

## Tech Stack

- **Backend**: Python, FastAPI, Pydantic
- **Frontend**: React, Next.js
- **Containerization**: Docker, Docker Compose
- **Cloud Infrastructure**: AWS (ECR, ECS, CloudWatch), Terraform
- **CI/CD**: GitHub Actions

---

## Project Structure

plaintext

CopyEdit

`conversation-analytics/ ├── backend/ │   ├── app/                 # FastAPI application code │   ├── tests/               # Backend test suite │   └── Dockerfile           # Docker configuration for backend ├── frontend/ │   ├── components/          # React components for the UI │   └── Dockerfile           # Docker configuration for frontend ├── infra/ │   ├── terraform/           # Terraform infrastructure code │   └── docker-compose.yml   # Local multi-container setup └── .github/workflows/       # CI/CD pipeline configuration`

---

## Getting Started

### Prerequisites

- [Python 3.9+](https://www.python.org/downloads/)
- [Node.js 18+](https://nodejs.org/)
- [Docker](https://www.docker.com/)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io/)

### Setup Instructions

1. Clone the repository:
    
    bash
    
    CopyEdit
    
    `git clone https://github.com/your-repo/conversation-analytics.git cd conversation-analytics`
    
2. **Set up the backend**:
    
    bash
    
    CopyEdit
    
    `cd backend python -m venv venv source venv/bin/activate pip install fastapi uvicorn pydantic pytest`
    
3. **Set up the frontend**:
    
    bash
    
    CopyEdit
    
    `cd ../frontend npx create-next-app@latest .`
    
4. **Run locally with Docker Compose**:
    
    bash
    
    CopyEdit
    
    `cd ../infra docker-compose up --build`
    

---

## Testing

1. Run backend tests:
    
    bash
    
    CopyEdit
    
    `cd backend pytest`
    
2. **CI/CD**: Tests and builds are triggered automatically on every push to GitHub.
    

---

## Deployment

### Backend Deployment

1. Build and push the Docker image to AWS ECR:
    
    bash
    
    CopyEdit
    
    `aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin <ECR_REPO_URI> docker build -t conversation-analytics-backend ./backend docker tag conversation-analytics-backend:latest <ECR_REPO_URI>:latest docker push <ECR_REPO_URI>:latest`
    
2. Deploy with Terraform:
    
    bash
    
    CopyEdit
    
    `cd infra/terraform terraform init terraform apply`
    

---

## Contributing

Feel free to submit issues and pull requests to improve this project.

---

## License

This project is licensed under the MIT License.

---

## Author

Developed by **Lee Dunn** as a demo for learning and showcasing DevOps, cloud, and development skills.