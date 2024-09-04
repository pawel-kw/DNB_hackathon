from pykafka import KafkaClient

KAFKA_HOST = "localhost:9092"

client = KafkaClient(hosts=KAFKA_HOST)
topic = client.topics["credit-card-transactions"]

consumer = topic.get_simple_consumer()

for message in consumer:
    if message is not None:
        print(message.offset, message.value)
