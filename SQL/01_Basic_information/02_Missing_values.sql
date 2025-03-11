SELECT column_name,
COUNT(*) - COUNT(*) FILTER (WHERE column_name IS NOT NULL) as null_count
FROM information_schema.columns
CROSS JOIN startup
WHERE table_name = 'startup'
GROUP BY column_name
