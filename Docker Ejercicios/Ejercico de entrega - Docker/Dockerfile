FROM debian:latest
RUN apt update -y && apt install apache2 -y
ADD ./index.html /var/www/html
EXPOSE 80