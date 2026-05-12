SELECT
	DistanceFromHome,
    COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS TotalAttrition,
    ROUND(SUM(Attrition = 'Yes')/COUNT(*) * 100, 2) AS AttritionRate
FROM
	employees_basic
GROUP BY
	DistanceFromHome
ORDER BY
	DistanceFromHome DESC