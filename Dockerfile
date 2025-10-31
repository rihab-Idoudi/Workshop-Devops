# Base image avec Java 17
FROM eclipse-temurin:17-jdk-alpine

# Répertoire de travail
WORKDIR /app

# Copier le jar déjà buildé
COPY target/firstMS1-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port de l'application
EXPOSE 8081

# Commande pour lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
