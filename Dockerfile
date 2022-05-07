FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN wget https://raw.githubusercontent.com/gmeza-nttdata/bootcamp-config-data/acr/other/application.yml
EXPOSE 8080:8080
ENTRYPOINT ["java","-jar","/app.jar"]