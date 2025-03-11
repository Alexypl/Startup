SELECT industry,
ROUND(MIN(employees)::numeric, 2) as min_employees,
ROUND((PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY employees))::numeric, 2) as quartile_1_employees,
ROUND((PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY employees))::numeric, 2) as median_employees,
ROUND(AVG(employees)::numeric, 2) as mean_employees,
ROUND((PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY employees))::numeric, 2) as quartile_1_employees,
ROUND(MAX(employees)::numeric, 2) as max_employees
FROM startup
GROUP BY industry
ORDER BY industry ASC;