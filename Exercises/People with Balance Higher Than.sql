CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan(@balanceTreshold MONEY)
AS
BEGIN
    SELECT FirstName, LastName
    FROM AccountHolders AS ah
    LEFT JOIN Accounts AS a ON ah.Id = a.AccountHolderId
    GROUP BY ah.Id, ah.FirstName, ah.LastName
    HAVING SUM(a.Balance) > @balanceTreshold
    ORDER BY ah.FirstName, ah.LastName
END