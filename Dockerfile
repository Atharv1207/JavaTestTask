# Official OpenJDK 17 from Eclipse Temurin
FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY gradlew .
COPY gradle ./gradle
COPY build.gradle settings.gradle ./
COPY src ./src

RUN chmod +x ./gradlew

# Build Spring Boot runnable jar
RUN ./gradlew clean bootJar -x test

EXPOSE 8080

# Start the application
CMD ["sh", "-c", "java -jar build/libs/*.jar"]
