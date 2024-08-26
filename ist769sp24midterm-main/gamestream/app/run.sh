#!/bin/bash
mc alias set s3 http://s3:9000 minio $PASSWORD
mc mb -p s3/gamestreams
mc mb -p s3/boxscores
sqlcmd -S mssql -U sa -P $PASSWORD -d master -i /app/0_create_db.sql
sqlcmd -S mssql -U sa -P $PASSWORD -d sidearmdb -i /app/1_create_tables_data.sql
python3 /app/stream.py