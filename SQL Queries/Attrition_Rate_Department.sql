SELECT Department,
	COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS AttritionCount,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS AttritionRate
FROM Employees_basic
GROUP BY Department
ORDER BY AttritionRate DESC