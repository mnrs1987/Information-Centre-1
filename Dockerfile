﻿# Dockerfile that modifies oraclelinux:6 to include an Apache HTTP server
FROM tomcat:6
ENV /usr/local/tomcat/webapps /InformationCentre
RUN apt-get update && apt-get install -y default-jdk
COPY . /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
RUN jar -cvf InformationCentre.war *
RUN cp InformationCentre.war $CATALINA_BASE/webapps/InformationCentre.war
