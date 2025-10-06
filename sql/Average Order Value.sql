CREATE OR REPLACE VIEW `sales-margin-project.sales_margin_dataset_us.vw_avg_order_value` AS
SELECT
  d.year,
  d.month,
  SUM(f.revenue) / NULLIF(SUM(f.customer_count), 0) AS avg_order_value
FROM `sales-margin-project.sales_margin_dataset_us.fact_sales` f
JOIN `sales-margin-project.sales_margin_dataset_us.dim_date` d
  ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;