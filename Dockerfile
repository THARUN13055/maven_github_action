FROM maven as build
COPY . .
RUN mvn install

FROM openjdk:11.0
COPY --from=build /springboot-app.jar .
CMD [ "java","-jar","/springboot-app.jar" ]
