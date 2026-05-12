SELECT
    d.JobSatisfaction,
    COUNT(*) AS TotalEmployees,
    SUM(b.Attrition = 'Yes') AS AttritionCount,
    ROUND(SUM(b.Attrition = 'Yes') / COUNT(*) * 100, 2) AS AttritionRate
FROM employees_basic b
JOIN employees_details d
	ON b.EmployeeNumber = d.EmployeeNumber
GROUP BY d.JobSatisfaction
ORDER BY d.JobSatisfaction

