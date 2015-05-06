FROM java:8-jdk

MAINTAINER Fabio Fumarola <fabiofumarola@gmail.com

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre

# data folder
RUN mkdir /hdfs-data

RUN \
	wget http://apache.mirrors.spacedump.net/hadoop/common/hadoop-2.7.0/hadoop-2.7.0.tar.gz && \
	tar xvf hadoop-2.7.0.tar.gz -C /usr/local/ && \
	ln -s /usr/local/hadoop-2.7.0 /usr/local/hadoop && \
	rm hadoop-2.7.0.tar.gz

ENV HADOOP_PREFIX /usr/local/hadoop
ENV HADOOP_HOME $HADOOP_PREFIX
ENV HADOOP_COMMON_HOME $HADOOP_PREFIX
ENV HADOOP_CONF_DIR $HADOOP_PREFIX/etc/hadoop
ENV HADOOP_HDFS_HOME $HADOOP_PREFIX
ENV HADOOP_MAPRED_HOME $HADOOP_PREFIX
ENV HADOOP_YARN_HOME $HADOOP_PREFIX

ADD start.sh /usr/local/hadoop/start-tail.sh
# add all the confs to hadoop
ADD *.xml /usr/local/hadoop/conf/



## Start HDFS daemons
# Format the namenode directory (DO THIS ONLY ONCE, THE FIRST TIME)
RUN $HADOOP_PREFIX/bin/hdfs namenode -format

CMD /usr/local/hadoop/start-tail.sh
