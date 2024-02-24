CREATE OR ALTER PROCEDURE 
usp_CalculateFutureValueForAccount(@AccountID INT,@InterestRate FLOAT)
AS
		DECLARE @Years INT = 5
		SELECT 
		a.Id AS [Account Id]
		,ah.FirstName
		,ah.LastName
		,a.Balance
		,dbo.ufn_CalculateFutureValue(a.Balance,@InterestRate,@Years) AS [Balance in 5 years]
		FROM AccountHolders AS ah
		JOIN Accounts AS a ON ah.Id = a.Id
		WHERE a.Id = @AccountID