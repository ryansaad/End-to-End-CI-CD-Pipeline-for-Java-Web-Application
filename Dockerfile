# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk17:alpine-jre

# the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
