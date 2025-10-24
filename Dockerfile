FROM eclipse-temurin:17-jdk
WORKDIR /app

COPY app.jar app.jar
COPY application-prod.properties application-prod.properties

RUN dir /app

CMD ["java", "-jar", "app.jar", "--spring.config.location=application-prod.properties"]

