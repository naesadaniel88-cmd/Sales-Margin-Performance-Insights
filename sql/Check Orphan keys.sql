SELECT COUNT(*) AS missing_dates
FROM `sales-margin-project.sales_margin_dataset_us.fact_sales` f
LEFT JOIN `sales-margin-project.sales_margin_dataset_us.dim_date` d
  ON f.date_id = d.date_id
WHERE d.date_id IS NULL;
