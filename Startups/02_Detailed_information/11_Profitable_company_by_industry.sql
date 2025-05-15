SELECT industry,
ROUND(AVG(profitable::numeric),3) as profitable_perc
FROM startup
GROUP BY industry
ORDER BY profitable_perc DESC