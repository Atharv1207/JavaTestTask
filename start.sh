#!/bin/bash

# Build the project
./gradlew build

# Run the JAR
java -jar build/libs/ItemApi-0.0.1-SNAPSHOT.jar
