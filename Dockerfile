FROM openjdk:21
WORKDIR /workspace/ionut/app
ADD . .
RUN microdnf install findutils
CMD ["./gradlew", "clean", "bootJar"]
COPY build/libs/*.jar app.jar
EXPOSE 8080
