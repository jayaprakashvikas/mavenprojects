FROM tomcat:8.5.16-jre8-alpine
COPY ./target/samplewebapp.war /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]

