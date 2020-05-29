FROM python:3.8.3-alpine3.11
ENV PYTHONUNBUFFERED 1
RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev

RUN mkdir /code
WORKDIR /code
COPY ./src/requirements.txt /code/
RUN pip install -r /code/requirements.txt
COPY ./src /code/