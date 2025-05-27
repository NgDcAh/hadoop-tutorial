FROM openjdk:8-jdk

ENV PIG_VERSION=0.17.0
ENV PIG_HOME=/opt/pig
ENV PATH=$PATH:$PIG_HOME/bin

RUN apt-get update && apt-get install -y wget tar python3 && \
    wget https://downloads.apache.org/pig/pig-${PIG_VERSION}/pig-${PIG_VERSION}.tar.gz && \
    tar -xzf pig-${PIG_VERSION}.tar.gz -C /opt && \
    mv /opt/pig-${PIG_VERSION} $PIG_HOME && \
    rm pig-${PIG_VERSION}.tar.gz


ENV HADOOP_CONF_DIR=/opt/hadoop/conf
WORKDIR /scripts
CMD ["tail", "-f", "/dev/null"]
