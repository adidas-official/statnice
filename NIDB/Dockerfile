FROM postgres:latest

ENV POSTGRES_DB=sandbox
ENV POSTGRES_PASSWORD=Password1*

COPY sql/* /docker-entrypoint-initdb.d/
EXPOSE 5432

