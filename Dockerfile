FROM maven:3.5-jdk-8-alpine AS builder 

COPY ./src .

COPY pom.xml .

RUN mvn clean package 

FROM tomcat:8.5.16-jre8-alpine

COPY --from=builder ./target/samplewebapp.war /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]


