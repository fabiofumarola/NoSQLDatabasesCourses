#!/usr/bin/env bash

# Start the namenode daemon
RUN $HADOOP_PREFIX/sbin/hadoop-daemon.sh start namenode
# Start the datanode daemon
RUN $HADOOP_PREFIX/sbin/hadoop-daemon.sh start datanode

## Start YARN daemons
# Start the resourcemanager daemon
RUN $HADOOP_PREFIX/sbin/yarn-daemon.sh start resourcemanager
# Start the nodemanager daemon
RUN $HADOOP_PREFIX/sbin/yarn-daemon.sh start nodemanager

tail -f /usr/local/hadoop/logs/*.{log,out}
