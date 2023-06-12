FROM maven as build
COPY . .
RUN mvn install

FROM openjdk:11.0
COPY --from=build /*.jar .
CMD [ "java","-jar","/*.jar" ]
