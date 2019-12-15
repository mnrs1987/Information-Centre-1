# Dockerfile that modifies oraclelinux:6 to include an Apache HTTP server
FROM tomcat
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD /etc/ansible/roles/javaapp/tasks/InformationCentre.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
