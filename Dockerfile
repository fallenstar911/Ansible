FROM maven:3.8.2-jdk-8-openj9
RUN apt update && apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /boxfuse-sample-java-war-hello/
RUN mvn package
#RUN cd ./target/
#RUN ls ./target/
RUN git pull https://github.com/fallenstar911/AnsibleWar.git
RUN git init
RUN git remote rm origin && git remote add origin https://fallenstar911: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@github.com/fallenstar911/AnsibleWar.git
RUN git add -f ./target/hello-1.0.war #
RUN git status
RUN git config --global user.email "sander2008.92@gmail.com"
RUN git config --global user.name "Fallenstar911"
RUN git commit -m "add war1"
#RUN ls ./target/

#RUN git remote add origin https://fallenstar911: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@github.com/fallenstar911/AnsibleWar.git
RUN git push -f --set-upstream origin master
