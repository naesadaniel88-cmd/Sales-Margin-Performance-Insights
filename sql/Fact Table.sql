CREATE OR REPLACE TABLE `sales-margin-project.sales_margin_dataset_us.fact_sales` AS
SELECT
  date_id,
  seller_id,
  department_id,
  revenue,
  margin,
  revenue_goal,
  margin_goal,
  sales_qty,
  customer_count
FROM `sales-margin-project.sales_margin_dataset_us.department_store_sales`;
