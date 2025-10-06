CREATE OR REPLACE TABLE `sales-margin-project.sales_margin_dataset_us.dim_date` AS
SELECT DISTINCT
  CAST(date_id AS DATE) AS date_id,
  EXTRACT(YEAR FROM date_id) AS year,
  EXTRACT(QUARTER FROM date_id) AS quarter,
  EXTRACT(MONTH FROM date_id) AS month,
  EXTRACT(DAY FROM date_id) AS day,
  FORMAT_DATE('%B', date_id) AS month_name,
  FORMAT_DATE('%A', date_id) AS weekday_name
FROM `sales-margin-project.sales_margin_dataset_us.department_store_sales`;
