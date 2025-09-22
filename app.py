# Minimal Flask application for Docker & GitHub Actions demo
# Returns a simple JSON message on the root path

from flask import Flask
app = Flask(__name__)

@app.get("/")
def hello():
    return {"message": "Hello from Flask in Docker via GitHub Actions!"}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
