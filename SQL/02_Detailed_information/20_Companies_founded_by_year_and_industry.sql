SELECT yearfounded, industry,
COUNT(*) as year_counter
FROM startup
GROUP BY yearfounded, industry
ORDER BY yearfounded ASC, year_counter DESC