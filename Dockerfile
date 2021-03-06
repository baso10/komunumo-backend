FROM openjdk:8-jre-alpine
COPY ./build/libs/komunumo-backend.jar /root/komunumo-backend.jar
RUN mkdir -p /root/.komunumo
WORKDIR /root
CMD ["java", "-server", "-Xms256m", "-Xmx256m", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=100", "-XX:+UseStringDeduplication", "-Dorg.slf4j.simpleLogger.defaultLogLevel=trace", "-jar", "komunumo-backend.jar"]
