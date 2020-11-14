FROM centos:7.8.2003
RUN yum -y update && yum -y install httpd
COPY index.html /var/www/html/
EXPOSE 80
CMD ["/bin/bash", "-c", "/usr/sbin/httpd -D FOREGROUND"]