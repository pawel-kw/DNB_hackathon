Following [Kafka Quickstart guide](https://kafka.apache.org/quickstart)

## Starting local Kafka

`bin/zookeeper-server-start.sh config/zookeeper.properties`

`bin/kafka-server-start.sh config/server.properties`

## Create a topic

`bin/kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092`

# Snowflake connector for Kafka

Config file: [SF_connect.properties](kafka_2.13-3.8.0/config/SF_connect.properties)

## Starting standalone SF connector

`bin/connect-standalone.sh config/connect-standalone.properties config/SF_connect.properties`

## Test data

Test transaction data from Kaggle
