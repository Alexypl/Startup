SELECT yearfounded, COUNT(*) as year_counter
FROM startup
GROUP BY yearfounded
ORDER BY yearfounded ASC