FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD secret
ENV MYSQL_DATABASE bookstore
ENV MYSQL_USER bookstore
ENV MYSQL_PASSWORD bookstore

COPY data /docker-entrypoint-initdb.d/

EXPOSE 3306
