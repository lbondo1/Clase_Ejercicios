FROM centos:7.8.2003
LABEL MAINTAINER="lbondorowski@gmail.com"
RUN yum -y update && yum -y install httpd
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
#CMD ["/bin/bash", "-c", "/usr/sbin/httpd -D FOREGROUND"]  -- (la misma opcion que la de arriba, solamente con CMD) 