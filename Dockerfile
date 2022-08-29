FROM openjdk:8
EXPOSE 8080
ADD target/finalappfinal.jar finalappfinal.jar
ENTRYPOINT ["java" , "-jar" , "/finalappfinal.jar"]
