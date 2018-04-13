# Dockerfile that modifies oraclelinux:6 to include an Apache HTTP server
FROM oraclelinux:6
MAINTAINER Nagarajan Murugan nagarajan.murugan@infosys.com
RUN yum -y install httpd
RUN echo "HTTP server running on guest" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND