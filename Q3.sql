SELECT
  refresh_date AS Day,
  term AS Top_Term,
  rank,
  dma_name
FROM `bigquery-public-data.google_trends.top_terms`
WHERE
  rank <= 3
  AND refresh_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
  AND dma_name = 'New York'
ORDER BY Day DESC, rank ASC
