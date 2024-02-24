SELECT DepartmentID,Salary FROM
(SELECT 
Salary, DepartmentID
,DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS SalaryRanking
FROM Employees
GROUP BY DepartmentID,Salary) AS subq
WHERE subq.SalaryRanking = 3