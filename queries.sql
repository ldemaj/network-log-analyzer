-- Show all DOWN incidents
SELECT * FROM monitoring_log WHERE status = 'DOWN';

-- Show uptime percentage
SELECT
  (100.0 * SUM(CASE WHEN status = 'UP' THEN 1 ELSE 0 END) / COUNT(*)) AS uptime_percentage
FROM monitoring_log;

