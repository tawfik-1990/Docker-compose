



FROM java:8
EXPOSE 8085
ADD target/db-service-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "-Dspring.profiles.active=development", "app.jar"]