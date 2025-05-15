SELECT industry,
ROUND(AVG(fundingamount::numeric), 2) as avg_fundingamount,
ROUND(AVG(valuation::numeric), 2) as avg_valuation,
ROUND(AVG(revenue::numeric), 2) as avg_revenue,
ROUND(AVG(employees::numeric), 2) as avg_employees
FROM startup
GROUP BY industry
ORDER BY industry ASC;
