FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y mysql-server

ENV MYSQL_DATABASE=blog_OW2
ENV MYSQL_USER=SYSTEM
ENV MYSQL_PASSWORD=BDpassWord@1
ENV MYSQL_ROOT_PASSWORD=BDpassWord@1

COPY schema.sql /docker-entrypoint-initdb.d/schema.sql

EXPOSE 3306

CMD ["mysqld"]
