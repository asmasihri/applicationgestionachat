FROM openjdk:8
EXPOSE 8080
WORKDIR /app
COPY  /app/target/finalappfinal.jar ./finalappfinal.jar
ENTRYPOINT ["java" , "-jar" , "/app/finalappfinal.jar"]
