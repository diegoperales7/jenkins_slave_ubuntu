FROM openjdk:11
RUN mkdir -p /home/agent/
RUN curl -sO http://192.168.100.150:8080/jnlpJars/agent.jar
RUN cp agent.jar /home/agent/
RUN echo 'running slave'
CMD ["java","-jar","/home/agent/agent.jar","-jnlpUrl", "http://192.168.100.150:8080/manage/computer/container/jenkins-agent.jnlp" ,"-secret","eb9aa0e924b53aa9499e52aa82bdbca01ad26f5fe653f0935a9ab849bf7e16a2","-workDir","/home/agent'","-noCertificateCheck"]
