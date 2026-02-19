SELECT
  mode,
  COUNT(*) AS shipments,
  ROUND(100 * AVG(on_time_flag), 2) AS otd_percent,
  ROUND(AVG(transit_days), 2) AS avg_transit
FROM shipments
GROUP BY mode
ORDER BY shipments DESC;