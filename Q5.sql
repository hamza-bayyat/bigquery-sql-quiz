SELECT
  week,
  term AS Top_Term,
  COUNT(*) AS appearances_in_top3
FROM `bigquery-public-data.google_trends.top_terms`
WHERE
  rank <= 3
  AND refresh_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
  AND dma_name = 'New York'
GROUP BY week, Top_Term
ORDER BY week DESC, appearances_in_top3 DESC
