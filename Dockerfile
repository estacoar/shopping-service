FROM eclipse-temurin:17-jdk-alpine
COPY build/libs/shopping-service.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
