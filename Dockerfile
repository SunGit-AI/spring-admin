FROM openjdk:8-jdk-alpine3.9
#FROM openjdk:8

MAINTAINER sunnySide
RUN apk add --update \
    bash

RUN mkdir /var/lib/sunapp
#this add copy our .jar to docker images
ADD target/sunSpringAdmin01.jar /opt/lib/sunapp/sunSpringAdmin01.jar

#COPY target/sunSpringTest01-0.0.1-SNAPSHOT.jar /opt/lib/
#RUN mkdir /var/lib/config-repo
#COPY /src/main/resources/application.properties /var/lib/config-repo
ENTRYPOINT ["java", "-jar", "/opt/lib/sunapp/sunSpringAdmin01.jar"]
#["/bin/bash", "-c", "set -e && java -Xmx512m -jar /opt/lib/sunapp/sunSpringTest01.jar"]
#ENTRYPOINT ["/usr/local/openjdk-8/jre/bin/java"]
#CMD ["java", "-jar", "/opt/lib/sunSpringTest01-0.0.1-SNAPSHOT.jar"]
#VOLUME /var/lib/config-repo
#172.17.10.129 172.18.0.2


EXPOSE 9665

CMD java \
 -jar /opt/lib/sunapp/sunSpringAdmin01.jar