SELECT TOP(3)
e.EmployeeID
,e.FirstName
FROM Employees AS e
LEFT JOIN EmployeesProjects AS p ON e.EmployeeID = p.EmployeeID
ORDER BY p.EmployeeID

