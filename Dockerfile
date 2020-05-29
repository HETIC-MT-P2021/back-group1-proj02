FROM python:3.8.3-alpine3.11
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY ./app/requirements.txt /code/
RUN pip install -r /code/requirements.txt
COPY ./app /code/