CREATE OR REPLACE TABLE `sales-margin-project.sales_margin_dataset_us.dim_department` AS
SELECT DISTINCT
  department_id,
  department_id AS department_name
FROM `sales-margin-project.sales_margin_dataset_us.department_store_sales`;
