FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY UnlimitedJCEPolicyJDK8/* /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/
COPY target/ExamAppCloudConfigServer-0.0.1-SNAPSHOT.jar ConfigServer.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","ConfigServer.jar"]