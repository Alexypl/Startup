SELECT region, industry,
COUNT(startupname) as startups_by_region
FROM startup
GROUP BY region, industry
ORDER BY region, startups_by_region DESC