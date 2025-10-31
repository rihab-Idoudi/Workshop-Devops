# Base image Java 17
FROM eclipse-temurin:17-jdk-alpine

# Répertoire de travail
WORKDIR /app

# Copier le JAR buildé et le script d'entrée
COPY target/firstMS1-0.0.1-SNAPSHOT.jar app.jar
COPY docker-entrypoint.sh /app/docker-entrypoint.sh

# Donner les droits d'exécution au script
RUN chmod +x /app/docker-entrypoint.sh

# Exposer le port de l'application
EXPOSE 8081

# Lancer Spring Boot via le script qui attend MySQL
ENTRYPOINT ["/app/docker-entrypoint.sh"]
