SELECT
  carrier,
  COUNT(*) AS shipments,
  ROUND(100 * AVG(on_time_flag), 2) AS otd_percent,
  ROUND(AVG(ship_cost_usd), 2) AS avg_cost
FROM shipments
GROUP BY carrier