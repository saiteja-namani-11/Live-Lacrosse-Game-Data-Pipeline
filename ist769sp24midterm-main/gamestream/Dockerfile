#FROM python:3.9-slim
FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    wget \
    nano \
    python3 \
    python3-pip

# RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
# RUN curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list | tee /etc/apt/sources.list.d/msprod.list
# RUN apt-get update && ACCEPT_EULA=Y apt-get install -y mssql-tools unixodbc-dev    

RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc \
    --create-dirs -o /usr/local/bin/mc &&  \
    chmod +x /usr/local/bin/mc 

RUN curl https://packages.microsoft.com/keys/microsoft.asc | tee /etc/apt/trusted.gpg.d/microsoft.asc
RUN add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/20.04/prod.list)"
RUN apt-get update &&  apt-get install sqlcmd

RUN pip install pandas mssql minio boto3


WORKDIR /app

COPY  app/ .

RUN chmod +x /app/run.sh


