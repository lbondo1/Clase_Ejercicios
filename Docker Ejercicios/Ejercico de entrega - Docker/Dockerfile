FROM centos:7.8.2003
RUN sudo yum -y update && yum install httpd -y 
COPY ./app/ /var/www/html/
EXPOSE 80
CMD systemctl start httpd