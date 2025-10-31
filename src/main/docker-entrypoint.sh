#!/bin/sh
# wait-for-it.sh version simple

echo "Waiting for MySQL to be ready..."
# Boucle tant que MySQL n'est pas disponible
while ! nc -z mysql 3306; do
  echo "MySQL is not ready yet..."
  sleep 2
done

echo "MySQL is up! Starting Spring Boot..."
exec java -jar app.jar
