# Use OpenJDK 17 as the base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the target directory
COPY target/*.jar app.jar

# Expose the Eureka server port
EXPOSE 8761

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
