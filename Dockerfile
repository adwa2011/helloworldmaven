# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY target/helloworld-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the application will listen on
EXPOSE 8080

# Specify the command to run on container startup
CMD ["java", "-jar", "app.jar"]
