SELECT industry,
ROUND(MIN(marketshare)::numeric, 2) as min_marketshare,
ROUND((PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY marketshare))::numeric, 2) as quartile_1_marketshare,
ROUND((PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY marketshare))::numeric, 2) as median_marketshare,
ROUND(AVG(marketshare)::numeric, 2) as mean_marketshare,
ROUND((PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY marketshare))::numeric, 2) as quartile_1_marketshare,
ROUND(MAX(marketshare)::numeric, 2) as max_marketshare
FROM startup
GROUP BY industry
ORDER BY industry ASC;