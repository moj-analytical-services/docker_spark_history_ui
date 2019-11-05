ARG SPARK_IMAGE=gcr.io/spark-operator/spark:v2.4.4
FROM ${SPARK_IMAGE}

RUN apk --update add coreutils

RUN mkdir /tmp/spark-events

ENV SPARK_NO_DAEMONIZE TRUE
ENTRYPOINT ["/opt/spark/sbin/start-history-server.sh"]
