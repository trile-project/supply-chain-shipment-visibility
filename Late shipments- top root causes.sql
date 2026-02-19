SELECT
  exception_type,
  COUNT(*) AS late_shipments
FROM shipments
WHERE on_time_flag = 0
GROUP BY exception_type
ORDER BY late_shipments DESC