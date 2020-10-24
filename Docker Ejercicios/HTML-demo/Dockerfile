FROM centos:7.8.2003
LABEL MAINTAINER="lbondorowski@gmail.com"
RUN yum install -y && yum install -y httpd
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd/", "-D", "FOREGROUND"]