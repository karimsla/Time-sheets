FROM openjdk:8-jdk-alpine
ARG DEFAULT_PATH=target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-2.3.12.RELEASE.jar
WORKDIR /
ENV JAR_PATH=$DEFAULT_PATH
COPY ${JAR_PATH} app.jar

EXPOSE 8080
CMD ["java", "-jar", "-Dspring.profiles.active=prod", "app.jar"]


#145f13eb-0f8e-4e61-8090-4fd6d6e07258