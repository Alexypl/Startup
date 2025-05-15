SELECT DISTINCT ON (industry) industry, exitstatus, COUNT(*) as exitstatus_count
FROM startup
GROUP BY industry, exitstatus
ORDER BY industry ASC, exitstatus_count DESC