FROM python:3.9.10-slim

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8090

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
