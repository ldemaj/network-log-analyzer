#!/bin/bash

# Config
URL="https://lorena.demaj.dev"
DB="monitor.db"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Check site status
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS_CODE" -eq 200 ]; then
    STATUS="UP"
else
    STATUS="DOWN"
fi

# Insert into SQLite
sqlite3 $DB <<EOF
INSERT INTO monitoring_log (timestamp, url, status_code, status)
VALUES ('$TIMESTAMP', '$URL', $STATUS_CODE, '$STATUS');
EOF

# Optional: also print to terminal
echo "[$TIMESTAMP] $URL - $STATUS (HTTP $STATUS_CODE)"

