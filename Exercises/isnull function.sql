CREATE VIEW V_EmployeeNameJobTitle AS
SELECT FirstName +' '+  ISNULL(MiddleName, '') + ' '+ LastName AS [Employee Name],JobTitle
FROM Employees
