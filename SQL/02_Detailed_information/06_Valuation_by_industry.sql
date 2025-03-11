SELECT industry,
ROUND(MIN(valuation)::numeric, 2) as min_valuation,
ROUND((PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY valuation))::numeric, 2) as quartile_1_valuation,
ROUND((PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY valuation))::numeric, 2) as median_valuation,
ROUND(AVG(valuation)::numeric, 2) as mean_valuation,
ROUND((PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY valuation))::numeric, 2) as quartile_1_valuation,
ROUND(MAX(valuation)::numeric, 2) as max_valuation
FROM startup
GROUP BY industry
ORDER BY industry ASC;