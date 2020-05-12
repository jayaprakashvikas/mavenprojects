FROM tomcat:8.5.16-jre8-alpine
<<<<<<< HEAD
CMD["catalina.sh","run"]
=======
COPY ./target/samplewebapp.war /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]

>>>>>>> 849c154a68c87a8237e7f75f562767340c49a15b
