SELECT 
  SUM(sales_qty) / NULLIF(SUM(customer_count),0) AS avg_items_per_customer
FROM `sales-margin-project.sales_margin_dataset_us.fact_sales`;