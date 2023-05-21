FROM openjdk:19

VOLUME /tmp

WORKDIR /app

COPY target/ChatApp-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENV DB_HOST=localhost
ENV DB_PORT=5432
ENV DB_NAME=users
ENV DB_USER=chatapp
ENV DB_PASSWORD=chatappsecured

ENTRYPOINT ["java","-cp","/app.jar", "hr.fer.rsikspr.ChatApp.ChatAppApplication"]
