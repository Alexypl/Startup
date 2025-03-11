SELECT DISTINCT ON (region) region, exitstatus, COUNT(*) as exitstatus_count
FROM startup
GROUP BY region, exitstatus
ORDER BY region ASC, exitstatus_count DESC