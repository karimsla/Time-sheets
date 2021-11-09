FROM openjdk:8-jdk-alpine
VOLUME /tmp
WORKDIR /app
ADD target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-2.3.12.RELEASE.jar .
ENTRYPOINT ["java","-jar","Timesheet-spring-boot-core-data-jpa-mvc-REST-1-2.3.12.RELEASE.jar"]
EXPOSE 2222


#145f13eb-0f8e-4e61-8090-4fd6d6e07258