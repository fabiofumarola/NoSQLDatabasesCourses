FROM java:8-jdk

MAINTAINER Fabio Fumarola <fabiofumarola@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre

RUN wget --quiet -O - http://apache.panu.it/hbase/hbase-1.0.1/hbase-1.0.1-bin.tar.gz | tar --directory /usr/local -xzf -
RUN ln -s /usr/local/hbase-1.0.1 /usr/local/hbase

ENV PATH $PATH:/usr/local/hbase/bin

## create the data folder
RUN mkdir /hbase-data

ADD start.sh /usr/local/hbase/start-tail.sh
RUN ["chmod", "+x", "/usr/local/hbase/start-tail.sh"]
ADD ./hbase-site.xml /usr/local/hbase/conf/

RUN sed -i.bak -r 's/=(INFO|DEBUG)/=WARN/' /usr/local/hbase/conf/log4j.properties

# zookeeper
EXPOSE 2181
# HBase Master API port
EXPOSE 60000
# HBase Master Web UI
EXPOSE 60010
# Regionserver API port
EXPOSE 60020
# HBase Regionserver web UI
EXPOSE 60030

#USER root

CMD /usr/local/hbase/start-tail.sh
