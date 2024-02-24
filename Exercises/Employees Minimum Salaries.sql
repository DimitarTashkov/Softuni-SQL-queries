SELECT 
e.DepartmentID
,MIN(Salary) AS MinimumSalary
FROM Employees AS e
WHERE e.HireDate > '2000-01-01' AND DepartmentID IN(2,5,7)
GROUP BY e.DepartmentID
ORDER BY e.DepartmentID