SELECT exitstatus, region,
COUNT(*) as exitstatus_count
FROM startup
GROUP BY region, exitstatus
ORDER BY exitstatus ASC, exitstatus_count DESC