FROM python:3.11

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN cp .env.example .env

EXPOSE 8000


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
