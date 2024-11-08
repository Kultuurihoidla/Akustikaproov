FROM eclipse-temurin:17-jdk-alpine

COPY /backend/target/*.jar app.jar

#RUN MKDIR -p /data && CHMOD 744 /data

RUN mkdir -p /data && chmod 744 /data

COPY /data /data

ENTRYPOINT ["java","-jar","/app.jar"]

EXPOSE 8080
USER 1001