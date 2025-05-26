# Use a base image with Java
FROM openjdk:11

# Set the working directory
WORKDIR /app

# Copy built jar file into container
COPY target/*.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]

