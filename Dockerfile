FROM openjdk:11
EXPOSE 8080
ADD ./target/MavenCoverage-0.0.1-SNAPSHOT.jar MavenCoverage-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", /MavenCoverage-0.0.1-SNAPSHOT.jar]
