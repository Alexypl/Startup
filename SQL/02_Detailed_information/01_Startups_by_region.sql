SELECT region, COUNT(startupname) as startups_by_region
FROM startup
GROUP BY region
ORDER BY startups_by_region DESC;