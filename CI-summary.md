# GitHub Actions – Docker Build & Push Summary

**Project:** workflows-github-actions  
**Date:** 2025-09-22  

---

## ✅ Workflow Result
✔ Checkout  
✔ Log in to Docker Hub  
✔ Build and push  

---

## 📦 Pushed Images
- `oren1984/flask-actions-demo:latest`  
- `oren1984/flask-actions-demo:sha-9eac5e9`  

**Digest:**  
`sha256:138d3fd2e19b6d777903ceee4f942c3a6e091afa92ba7649b72ecd849c542a7c`

---

## 🔎 Local Verification
```bash
docker pull oren1984/flask-actions-demo:latest
docker run -d -p 5001:5000 --name flask-actions-demo oren1984/flask-actions-demo:latest
curl http://localhost:5001/
# {"message": "Hello from Flask in Docker via GitHub Actions!"}
