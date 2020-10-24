FROM centos:7.8.2003
RUN yum install -y httpd
COPY ./app/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
