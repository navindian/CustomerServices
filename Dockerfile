FROM tomcat

ADD target/CustomerServices-1.0.war /var/lib/tomcat7/webapps/CustomerServices.war

CMD ["catalina.sh", "run"]
