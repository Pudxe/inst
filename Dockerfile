# Базовый образ, который тоже состоит из слоев
FROM python:3.10-slim

# Новый слой
WORKDIR /inst
# Новый слой
COPY requirements.txt .
# Новый слой
RUN pip install -r requirements.txt
# Новый слой
COPY . .
# Новый слой
CMD gunicorn -b 0.0.0.0:5000 -w 2 app:app