
# Stage 1: Build Java Web Application
FROM maven:3.9-eclipse-temurin-25 AS build

WORKDIR /app

# Copy Maven configuration
COPY pom.xml .

# Copy source code
COPY src ./src

# Build WAR file
RUN mvn clean package -DskipTests

# Stage 2: Run using GlassFish
FROM ghcr.io/eclipse-ee4j/glassfish:8.0.0

# Deploy CVBuilder as root application
COPY --from=build /app/target/*.war /deploy/ROOT.war

# GlassFish HTTP port
EXPOSE 8080
