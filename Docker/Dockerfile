FROM --platform=linux/amd64 mcr.microsoft.com/mssql/server:2022-latest

# Install Adventure Works 2017
WORKDIR /
COPY ./backup/adventureworks.bak ./adventureworks.bak
COPY ./install.sql .
COPY ./startup.sh .
# RUN /bin/bash ./startup.sh