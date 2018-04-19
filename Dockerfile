# Dockerfile that modifies oraclelinux:6 to include an Apache HTTP server
FROM tomcat:8.0.43-jre8
ADD ./target/InformationCentre.war /usr/local/tomcat/webapps/
EXPOSE 9001
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
