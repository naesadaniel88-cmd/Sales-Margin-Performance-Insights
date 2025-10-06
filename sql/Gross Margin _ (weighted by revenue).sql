SELECT ROUND(
  SAFE_DIVIDE(
    SUM(CASE WHEN revenue > 0 THEN revenue * margin ELSE 0 END),
    SUM(CASE WHEN revenue > 0 THEN revenue ELSE 0 END)
  ), 4
) AS gross_margin_pct
FROM `sales-margin-project.sales_margin_dataset_us.fact_sales`;
