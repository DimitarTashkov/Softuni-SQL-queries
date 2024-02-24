BEGIN TRANSACTION
UPDATE Employees
SET Salary = Salary*1.12
WHERE DepartmentID IN(
SELECT DepartmentID
FROM Departments
WHERE NAME IN('Engineering','Tool Design','Marketing','Information Services'))
SELECT Salary
FROM Employees
ROLLBACK
