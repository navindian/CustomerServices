FROM tomcat

ADD target/CustomerServices-1.0.war /usr/local/tomcat/webapps/CustomerServices.war

CMD ["catalina.sh", "run"]
