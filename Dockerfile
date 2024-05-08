FROM eclipse-temurin:17-jre

ADD target/order-service-0.0.1-SNAPSHOT.jar /order-service-0.0.1-SNAPSHOT.jar

# You do not need the line below if you have opentelemetry-javaagent.jar downloaded onto your local folder
# ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar

# opentelemetry-javaagent.jar is added to 'agent' folder within 'target' parent folder
ADD target/agent/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar

ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar \

# You do not need to specify args below if you have opentelemetry-javaagent.jar on your local (like above step implies in target/agent folder)
# If opentelemetry-javaagent.jar is on your local, you instead specify the same args below in docker-compose.yml file as
# environment vars

#                -Dotel.traces.exporter=console \
#                -Dotel.metrics.exporter=console \
#                -Dotel.logs.exporter=console \

# This gets generated in target folder when you build the project upon running 'package' goal in maven (and not just 'compile' goal)
                -jar /order-service-0.0.1-SNAPSHOT.jar