# Usa una imagen base con Java 17
FROM eclipse-temurin:17-jdk

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo .jar y el archivo de configuración al contenedor
COPY shopify-integration-engine-0.0.1-SNAPSHOT.jar app.jar
COPY application-prod.properties application-prod.properties

# Paso de depuración: muestra el contenido del directorio /app
RUN ls -l /app

# Comando de arranque del servicio
CMD ["java", "-jar", "app.jar", "--spring.config.location=application-prod.properties"]