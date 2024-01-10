from google.cloud import bigquery

client = bigquery.Client()

dataset_ref = client.dataset("hacker-news", "bigquery-public-data")

dataset = client.get_dataset(dataset_ref)

tables = list(client.list_tables(dataset))

for table in tables:
    print(table)
