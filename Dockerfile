FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY shopify-integration-engine-0.0.1-SNAPSHOT.jar app.jar
COPY application-prod.properties application-prod.properties
CMD ["java", "-jar", "app.jar", "--spring.config.location=application-prod.properties"]