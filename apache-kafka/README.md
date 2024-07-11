# AWESOME DOCUMENTATION FOR APACHE KAFKA

![apache-kafka-icon](./artefacts/apache-kafka-icon.png)

## REFERENCES
* [Apache Kafka Official](https://kafka.apache.org/)
* [Kafka Connect](https://docs.confluent.io/platform/current/connect/index.html)
* [Kafka Streams Docs](https://kafka.apache.org/documentation/streams/)
* [Apache Kafka Schema Registry](https://docs.confluent.io/platform/current/schema-registry/index.html)
* [ksqlDB](https://ksqldb.io/)

## GETTINGS STARTED

**Apache Kafka** is an **open-source distributed event streaming platform** used for building **real-time data pipelines and streaming** applications. It is horizontally scalable, fault-tolerant, and designed to handle high-volume data streams.

## Kafka Architecture

Kafka follows a distributed architecture with the following key components:

1. **Brokers**: Kafka brokers are servers that store and manage data streams.
2. **Topics**: A topic is a logical channel or feed name to which records are published.
3. **Partitions**: Topics are divided into partitions, which are ordered, immutable sequences of records.
4. **Producers**: Producers are applications that publish data to Kafka topics.
5. **Consumers**: Consumers are applications that subscribe to topics and process the data.