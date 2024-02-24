CREATE PROCEDURE 
usp_DeleteEmployeesFromDepartment (@departmentId INT)
AS
BEGIN
	DECLARE @employeeToBeDeleted TABLE (ID INT)
	--Create temp table to store IDs of Employees market for deletion
	INSERT INTO @employeeToBeDeleted(ID)
	SELECT EmployeeID
	FROM Employees
	WHERE DepartmentID = @departmentId

	--Handle departments FK
	ALTER TABLE Departments
	ALTER COLUMN ManagerID INT 

	--Set managers to null if their manager is bound to be deleted
	UPDATE Departments
	SET ManagerID = NULL
	WHERE ManagerID IN(SELECT * FROM @employeeToBeDeleted)
	--Set managers to null if their manager is bound to be deleted
	UPDATE Employees
	SET ManagerID = NULL
	WHERE ManagerID IN(SELECT * FROM @employeeToBeDeleted)
	--Delete actions
	DELETE FROM EmployeesProjects
	WHERE EmployeeID IN(SELECT * FROM @employeeToBeDeleted)
	DELETE FROM Employees
	WHERE DepartmentID = @departmentId
	DELETE FROM Departments
	WHERE DepartmentID = @departmentId

	SELECT COUNT(*)
	FROM Employees
	WHERE DepartmentID = @departmentId
END