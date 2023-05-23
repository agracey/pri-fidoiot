#FROM registry.suse.com/bci/openjdk-devel:latest as devel
## TODO Build stage

FROM registry.suse.com/bci/openjdk:latest
WORKDIR /app

RUN echo "" > secrets.path
COPY ./component-samples/demo/aio/log4j2.xml .
COPY ./component-samples/demo/aio/tomcat-users.xml .
COPY ./component-samples/demo/aio/context.xml .


COPY ./component-samples/demo/aio/lib ./lib
COPY ./component-samples/demo/aio/aio.jar .


# Configure and start all-in-one
CMD ["java", "-jar", "aio.jar"]
