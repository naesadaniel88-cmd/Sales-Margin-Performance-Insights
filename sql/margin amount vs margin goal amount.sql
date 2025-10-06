SELECT
  SUM(revenue * margin)       AS margin_amount,
  SUM(revenue * margin_goal)  AS margin_goal_amount,
  ROUND(
    SAFE_DIVIDE(SUM(revenue * margin), SUM(revenue * margin_goal)),
    4
  ) AS margin_goal_pct
FROM `sales-margin-project.sales_margin_dataset_us.fact_sales`;
