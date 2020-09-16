FROM python:3.8.5-slim-buster

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends build-essential \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

ADD requirements.txt .

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

WORKDIR /app/src
EXPOSE 8000
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8000"]
