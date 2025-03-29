FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests
CMD ["java", "-jar", "build/libs/bradesco-bootcamp-2025-0.0.1-SNAPSHOT.jar"]
