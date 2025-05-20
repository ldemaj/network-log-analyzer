CREATE TABLE IF NOT EXISTS monitoring_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp TEXT,
    url TEXT,
    status_code INTEGER,
    status TEXT
);

