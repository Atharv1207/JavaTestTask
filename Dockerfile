# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Gradle wrapper and build files
COPY gradlew .
COPY gradle ./gradle
COPY build.gradle settings.gradle ./

# Copy source code
COPY src ./src

# Give permission to gradlew
RUN chmod +x ./gradlew

# Build the app
RUN ./gradlew clean build -x test

# Expose port Spring Boot uses
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "build/libs/ItemApi-0.0.1-SNAPSHOT.jar"]
