# Base image olarak OpenJDK kullanıyoruz
FROM openjdk:17-jdk

# Uygulamanın çalışacağı dizini oluşturuyoruz
WORKDIR /app

# Maven build tarafından üretilen jar dosyasını Docker image'ine kopyalıyoruz
COPY target/springboot-pipeline-ornek-0.0.1-SNAPSHOT.jar /app/app.jar

# Uygulama çalıştırma komutunu belirtiyoruz
ENTRYPOINT ["java", "-jar", "/app/app.jar"]