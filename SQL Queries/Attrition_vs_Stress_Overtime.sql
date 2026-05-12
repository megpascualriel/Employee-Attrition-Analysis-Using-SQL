SELECT
	Overtime,
    COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS TotalAttrition,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS AttritionRate
FROM employees_basic b
JOIN employees_details d
	ON b.EmployeeNumber = d.EmployeeNumber
GROUP BY Overtime
