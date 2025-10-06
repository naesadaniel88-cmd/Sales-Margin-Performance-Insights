SELECT *
FROM `sales-margin-project.sales_margin_dataset_us.vw_top3_departments_by_month`
ORDER BY month, total_revenue DESC
LIMIT 10;