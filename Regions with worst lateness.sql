SELECT
  destination_region,
  COUNT(*) AS late_shipments,
  ROUND(AVG(lateness_days), 2) AS avg_late_days
FROM shipments
WHERE on_time_flag = 0
GROUP BY destination_region
ORDER BY avg_late_days DESC;
