CREATE OR REPLACE TABLE `sales-margin-project.sales_margin_dataset_us.dim_seller` AS
SELECT DISTINCT
  seller_id,
  seller_id AS seller_name
FROM `sales-margin-project.sales_margin_dataset_us.department_store_sales`;
