# Base image Java 17
FROM eclipse-temurin:17-jdk-alpine

# Répertoire de travail
WORKDIR /app

# Copier le JAR buildé
COPY target/firstMS1-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port de l'application
EXPOSE 8081

# Entrypoint simple (Spring Boot sera lancé via docker-compose command)
ENTRYPOINT ["java", "-jar", "app.jar"]
