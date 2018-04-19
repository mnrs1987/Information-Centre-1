# Dockerfile that modifies oraclelinux:6 to include an Apache HTTP server
FROM tomcat:6
ENV /usr/local/tomcat/webapps /InformationCentre
RUN apt-get update && apt-get install -y default-jdk
COPY ./target/InformationCentre.war /usr/local/tomcat/webapps/
#WORKDIR /usr/local/tomcat/webapps/
#RUN jar -cvf InformationCentre.war *
EXPOSE 9000
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
#RUN cp InformationCentre.war $CATALINA_BASE/webapps/InformationCentre.war
