# Use official JDK image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Build the app
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Expose port
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "target/email-reply-generator-backend-sb-0.0.1-SNAPSHOT.jar"]
