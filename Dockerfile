FROM maven:3.8.2-jdk-8-openj9
RUN apt update && apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /boxfuse-sample-java-war-hello/
RUN mvn package
RUN cd ./target/ && ls

