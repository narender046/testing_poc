FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

ADD . /app/

CMD ["python3", "./webapp.py"]
