CREATE OR REPLACE VIEW `sales-margin-project.sales_margin_dataset_us.vw_top3_sellers_by_month` AS
WITH monthly AS (
  SELECT
    DATE_TRUNC(date_id, MONTH) AS month,
    seller_id,
    SUM(revenue) AS total_revenue
  FROM `sales-margin-project.sales_margin_dataset_us.fact_sales`
  GROUP BY month, seller_id
)
SELECT *
FROM monthly
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY month
  ORDER BY total_revenue DESC
) <= 3;
