#  GitHub Actions – Docker Build & Push (Flask Demo)

This project demonstrates a **minimal CI/CD pipeline** using **GitHub Actions** to build and push a Docker image to **Docker Hub**.

---

## 📂 Project Structure
.
├── app.py # Minimal Flask app
├── requirements.txt # Dependencies
├── Dockerfile # Build instructions for the image
├── .dockerignore # Files excluded from Docker context
├── .github/
│ └── workflows/
│ └── docker-build-push.yml # CI/CD workflow definition
└── README.md # Project documentation



---

##  Workflow Summary
The workflow (`.github/workflows/docker-build-push.yml`) is triggered on:
- Every **push** to the `main` branch  
- Manual dispatch (`workflow_dispatch`)  

### Steps:
1. **Checkout** – Pull repository code.  
2. **Set up Docker Buildx** – Prepare multi-platform build.  
3. **Login to Docker Hub** – Using GitHub Secrets.  
4. **Extract metadata** – Generate tags (`latest`, commit SHA).  
5. **Build & Push** – Create and push image to Docker Hub.  

---

##  Docker Hub Integration
- Repository: [`oren1984/flask-actions-demo`](https://hub.docker.com/r/oren1984/flask-actions-demo)  
- Tags pushed automatically:  
  - `latest`  
  - `sha-<commit>`  

Example successful run:
✔ Checkout
✔ Log in to Docker Hub
✔ Build and push

Pushed: oren1984/flask-actions-demo:latest
Pushed: oren1984/flask-actions-demo:sha-9eac5e9
Digest: sha256:138d3fd2e19b6d777903ceee4f942c3a6e091afa92ba7649b72ecd849c542a7c

---

## Local Verification
To run locally after pulling the image:

```bash
docker pull oren1984/flask-actions-demo:latest
docker run -d -p 5001:5000 --name flask-actions-demo oren1984/flask-actions-demo:latest

# Test the endpoint:
curl http://localhost:5001/
# {"message": "Hello from Flask in Docker via GitHub Actions!"}


