FROM alpine

# init
RUN mkdir /www
WORKDIR /www
COPY requirements.txt /www/

# setup
RUN apk update
RUN apk upgrade
RUN apk --no-cache add \
    python3 \
    python3-dev \
    postgresql-client \
    postgresql-dev \
    build-base \
    gettext
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# clean
RUN apk del -r python3-dev postgresql

# prep
ENV PYTHONUNBUFFERED 1
COPY . /www/