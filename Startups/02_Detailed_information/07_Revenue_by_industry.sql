SELECT industry,
ROUND(MIN(revenue)::numeric, 2) as min_revenue,
ROUND((PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY revenue))::numeric, 2) as quartile_1_revenue,
ROUND((PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY revenue))::numeric, 2) as median_revenue,
ROUND(AVG(revenue)::numeric, 2) as mean_revenue,
ROUND((PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY revenue))::numeric, 2) as quartile_1_revenue,
ROUND(MAX(revenue)::numeric, 2) as max_revenue
FROM startup
GROUP BY industry
ORDER BY industry ASC;
