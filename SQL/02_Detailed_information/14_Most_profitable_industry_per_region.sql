SELECT DISTINCT ON (region) region, industry,
ROUND(AVG(profitable::numeric),3) as profitable_perc
FROM startup
GROUP BY region, industry
ORDER BY region ASC, profitable_perc DESC