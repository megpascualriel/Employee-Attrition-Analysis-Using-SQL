SELECT
		IncomeQuartile,
        COUNT(*) AS TotalEmployees,
        SUM(Attrition = 'Yes') AS TotalAttrition,
        ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS AttritionRate        
FROM (
    SELECT
		MonthlyIncome,
		Attrition,
		NTILE(4) OVER (ORDER BY d.MonthlyIncome) AS IncomeQuartile
	FROM employees_basic b
	JOIN employees_details d
		ON b.EmployeeNumber = d.EmployeeNumber
) t
GROUP BY IncomeQuartile
ORDER BY IncomeQuartile