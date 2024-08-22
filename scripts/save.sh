#!/bin/bash

#FIX исправить работу скрипта

PGUSER="postgres"
PGPASSWORD="postgres"
PGDATABASE="postgres"
PGHOST="localhost"
BACKUP_DIR="./backup"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/${PGDATABASE}_backup_$DATE.sql"

export PGPASSWORD


pg_dump -U $PGUSER -h $PGHOST -F c -b -v -f $BACKUP_FILE $PGDATABASE


if [ $? -eq 0 ]; then
    echo "Backup completed successfully. File saved as $BACKUP_FILE"
else
    echo "Backup failed!"
fi
