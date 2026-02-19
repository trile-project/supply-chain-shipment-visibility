SELECT 
  ROUND(100 * AVG(on_time_flag), 2) AS otd_percent,
  COUNT(*) AS total_shipments
FROM shipments;
