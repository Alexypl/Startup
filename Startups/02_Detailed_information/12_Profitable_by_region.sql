SELECT region,
ROUND(AVG(profitable::numeric),3) as profitable_perc
FROM startup
GROUP BY region
ORDER BY profitable_perc DESC