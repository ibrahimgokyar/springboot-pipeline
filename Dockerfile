# Base image olarak OpenJDK kullanıyoruz
FROM openjdk:17-jdk-slim

# Uygulamanın çalışacağı dizini oluşturuyoruz
WORKDIR /app

# Maven build tarafından üretilen jar dosyasını Docker image'ine kopyalıyoruz
COPY target/springboot-pipeline-ornek-0.0.1-SNAPSHOT.jar app.jar

# Uygulama çalıştırma komutunu belirtiyoruz
ENTRYPOINT ["java", "-jar", "app.jar"]