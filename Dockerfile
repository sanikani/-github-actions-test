# Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR file into the image
COPY build/libs/*.jar app.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]