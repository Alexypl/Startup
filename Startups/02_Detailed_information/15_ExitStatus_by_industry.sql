SELECT exitstatus, industry,
COUNT(*) as exitstatus_count
FROM startup
GROUP BY industry, exitstatus
ORDER BY exitstatus ASC, exitstatus_count DESC