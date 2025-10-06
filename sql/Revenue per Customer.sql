SELECT 
  SUM(revenue) / NULLIF(SUM(customer_count),0) AS revenue_per_customer

FROM `sales-margin-project.sales_margin_dataset_us.fact_sales`;