ARG SPARK_IMAGE=gcr.io/spark-operator/spark:v2.4.0
FROM ${SPARK_IMAGE}

RUN apk --update add coreutils

RUN mkdir /tmp/spark-events
ENTRYPOINT ["/opt/spark/sbin/start-history-server.sh"]```
