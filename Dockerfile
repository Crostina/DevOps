# Image de base : OpenJDK 21 Alpine
FROM eclipse-temurin:21-jdk-alpine

# Créer un dossier de travail dans le conteneur
WORKDIR /app

# Copier le JAR compilé depuis le dossier target
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar


# Exposer le port utilisé par Spring Boot
EXPOSE 8089

# Commande pour démarrer l'application
ENTRYPOINT ["java","-jar","app.jar"]

