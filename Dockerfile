FROM tomcat
MAINTAINER bhat_amruthap

ADD target/CustomerServices-1.0.war /usr/local/tomcat/webapps/CustomerServices.war

CMD ["catalina.sh", "run"]
