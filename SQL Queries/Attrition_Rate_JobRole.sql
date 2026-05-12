SELECT JobRole,
	COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS AttritionCount,
     ROUND(SUM(Attrition = 'Yes') / COUNT(*) *  100, 2) AS AttritionRate
FROM Employees_basic
GROUP BY JobRole
ORDER BY AttritionRate DESC