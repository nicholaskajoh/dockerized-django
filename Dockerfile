FROM python:3.6-alpine

RUN apk --update add \
    build-base \
    postgresql \
    postgresql-dev \
    libpq \
    # pillow dependencies
    jpeg-dev \
    zlib-dev

RUN mkdir /www
WORKDIR /www
COPY requirements.txt /www/
RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED 1

COPY . /www/