ROM python:3.12-slim

# Prevents Python from writing .pyc & enables unbuffered logs
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
# הרצה עם gunicorn ל-production-ish
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
EXPOSE 5000

