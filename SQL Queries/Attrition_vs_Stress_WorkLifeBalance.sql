SELECT
	WorkLifeBalance,
    COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS TotaAttrition,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS AttritionRate
FROM
	employees_details d
JOIN employees_basic b
	ON d.EmployeeNumber = b.EmployeeNumber
GROUP BY
	WorkLifeBalance
ORDER BY
	WorkLifeBalance DESC
    