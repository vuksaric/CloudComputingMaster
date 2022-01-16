FROM python:3.8

WORKDIR /usr/src

RUN apt update
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY new_app/ .