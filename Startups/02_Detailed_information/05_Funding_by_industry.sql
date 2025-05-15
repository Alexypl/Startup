SELECT industry,
ROUND(MIN(fundingamount)::numeric, 2) as min_funding,
ROUND((PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY fundingamount))::numeric, 2) as quartile_1_funding,
ROUND((PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY fundingamount))::numeric, 2) as median_funding,
ROUND(AVG(fundingamount)::numeric, 2) as mean_funding,
ROUND((PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY fundingamount))::numeric, 2) as quartile_1_funding,
ROUND(MAX(fundingamount)::numeric, 2) as max_funding
FROM startup
GROUP BY industry
ORDER BY industry ASC;
