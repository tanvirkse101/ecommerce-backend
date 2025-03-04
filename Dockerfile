# Dockerfile
FROM python:3.11

WORKDIR /app

COPY requirements.txt ./requirements.txt
COPY . .

RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]