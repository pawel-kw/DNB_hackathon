from pykafka import KafkaClient
import json
import csv

KAFKA_HOST = "localhost:9092"

client = KafkaClient(hosts=KAFKA_HOST)
topic = client.topics["credit-card-transactions"]

# Read in the data file from data/User0_credit_card_transactions.csv and send it to the topic as json

with open("data/User0_credit_card_transactions.csv", "r") as file:
    reader = csv.DictReader(file)
    with topic.get_sync_producer() as producer:
        for row in reader:
            message = json.dumps(row)
            encoded_message = message.encode("utf-8")
            producer.produce(encoded_message)


# with topic.get_sync_producer() as producer:
#     for i in range(10):
#         message = "Test message " + str(i)
#         encoded_message = message.encode("utf-8")
#         producer.produce(encoded_message)
