FROM openjdk:11
EXPOSE 8080

COPY ./pom.xml ./pom.xml
COPY ./src ./src
RUN mvn dependency:go-offline -B
RUN mvn package


COPY --from=maven target/MavenCoverage-*.jar ./MavenCoverage.jar

ENTRYPOINT ["java", "-jar", /MavenCoverage-0.0.1-SNAPSHOT.jar]
