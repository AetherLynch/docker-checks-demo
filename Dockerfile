# syntax=docker/dockerfile:1

FROM python:3.12-slim

WORKDIR /app

# Recomendación: copiar requirements primero para mejorar caché
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

# Producción simple
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]