# FROM openjdk:11
# EXPOSE 8080

# COPY ./pom.xml ./pom.xml
# COPY ./src ./src
# # RUN mvn dependency:go-offline -B
# RUN mvn package


# COPY --from=maven target/MavenCoverage-*.jar ./MavenCoverage.jar

# ENTRYPOINT ["java", "-jar", /MavenCoverage-0.0.1-SNAPSHOT.jar]

### BUILD image
FROM maven:3-openjdk-11 as builder
# create app folder for sources
RUN mkdir -p /build
WORKDIR /build
COPY pom.xml /build
#Download all required dependencies into one layer
RUN mvn -B dependency:resolve dependency:resolve-plugins
#Copy source code
COPY src /build/src
# Build application
RUN mvn package
