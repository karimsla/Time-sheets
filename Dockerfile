FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/Timesheet-spring-boot-core-data-jpa-mvc-REST-2.3.12.RELEASE.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 2222

#145f13eb-0f8e-4e61-8090-4fd6d6e07258