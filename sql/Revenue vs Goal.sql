SELECT 
  SUM(revenue) AS total_revenue,
  SUM(revenue_goal) AS total_revenue_goal,
  ROUND(SUM(revenue) / NULLIF(SUM(revenue_goal),0), 2) AS revenue_goal_pct
FROM `sales-margin-project.sales_margin_dataset_us.fact_sales`;