# stream the game events to the s3/gamestreams bucket
import time
from minio import Minio
from minio.error import S3Error
import os 
import io

import logging

logging.basicConfig(level=logging.INFO)

logging.info("Waiting for services...")
time.sleep(3)

pw = os.getenv("PASSWORD")
delay = float(os.getenv("DELAY","0.1"))
bucket = "gamestreams"
file = "gamestream.txt"
source = "/app/game_events.txt"
totaltime = 60*60
client = Minio('s3:9000',access_key="minio",secret_key=pw,secure=False)

if client.bucket_exists(bucket):
    logging.info("Bucket exists...ok")

with open(source,"r") as f:
    events = f.readlines()

logging.info(f"Starting Game Data Stream. Delay: 1 second == {delay} seconds.")
for i in range(totaltime,-1,-1):
    time.sleep(delay)
    minutes = i // 60
    seconds = i % 60
    timestamp = f"{minutes:02d}:{seconds:02d}"
    index = 0
    for event in events:
        if timestamp in event:
            buff = "".join(events[:index+1])
            bytes = buff.encode("utf-8")
            client.put_object(bucket, file, io.BytesIO(bytes), len(bytes), content_type="text/plain")
            logging.info(f"Wrote {file} to bucket {bucket} at {timestamp}")
            break
        index += 1    

logging.info(f"Game Over. Data Stream is complete.")

