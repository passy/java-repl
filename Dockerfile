#
# OpenJDK Java 7 JRE Dockerfile
#
# https://github.com/albertlatacz/java-repl
#

# Pull base image.
FROM dockerfile/java

MAINTAINER Pascal Hartig <phartig@rdrei.net>

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jdk && \
  rm -rf /var/lib/apt/lists/*


# Define working directory.
WORKDIR /data

ADD ./javarepl.jar /data/javarepl.jar

# Define default command.
CMD ["java", "-jar", "/data/javarepl.jar"]
