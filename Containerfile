FROM docker.io/eclipse-temurin:17.0.6_10-jdk-alpine AS builder
RUN mkdir /project
WORKDIR /project
COPY . .
RUN ./mvnw package

FROM builder AS alpine-jdk-runner
ENTRYPOINT [ "java", "-jar", "target/article-2023-04-02-multistage-1.0-SNAPSHOT.jar" ]

FROM docker.io/eclipse-temurin:17.0.6_10-jre-alpine AS alpine-runner
COPY \
  --from=builder \
  --chmod=444 \
  /project/target/*.jar app.jar
ENTRYPOINT [ "java", "-jar", "app.jar" ]

FROM gcr.io/distroless/java17:nonroot AS distroless-runner
COPY \
  --from=builder \
  --chmod=444 \
  /project/target/*.jar app.jar
ENTRYPOINT [ "java", "-jar", "app.jar" ]

FROM registry.access.redhat.com/ubi8/openjdk-17-runtime:1.15 AS ubi-runner
COPY \
  --from=builder \
  --chmod=444 \
  /project/target/*.jar app.jar
ENTRYPOINT [ "java", "-jar", "app.jar" ]