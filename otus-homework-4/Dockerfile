FROM openjdk:21-jdk-slim
WORKDIR /app
COPY target/user-service-1.0.0.jar app.jar
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8000"]