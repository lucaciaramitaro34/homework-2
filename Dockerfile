FROM ubuntu:16.04

MAINTAINER Luca Ciaramitaro "lciaramitaro27@cmc.edu"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["python"]

CMD ["app.py"]
