FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . .
RUN chmod +x gradlew  # Dá permissão de execução ao gradlew
RUN ./gradlew clean build -x test  # Compila sem rodar testes
CMD ["java", "-jar", "build/libs/bradesco-bootcamp-2025-0.0.1-SNAPSHOT.jar"]
