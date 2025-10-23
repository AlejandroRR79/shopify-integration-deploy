FROM eclipse-temurin:17-jdk
WORKDIR /app

# Copia el .jar y el archivo de configuración
COPY shopify-integration-erp-0.1-SNAPSHOT.jar app.jar
COPY application-prod.properties application-prod.properties

# Paso de depuración: muestra el contenido del directorio /app
RUN ls -l /app

# Comando de arranque del servicio
CMD ["java", "-jar", "app.jar", "--spring.config.location=application-prod.properties"]