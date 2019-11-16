FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/eureka-server-*.jar eureka-server.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/eureka-server.jar"]