CREATE FUNCTION udf_ProductWithClients(@name NVARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @count INT = 
	(
		SELECT  
		COUNT(c.Id)
		FROM Products AS p
		JOIN ProductsClients AS pc ON p.Id = pc.ProductId
		JOIN Clients AS c ON c.Id = pc.ClientId
		WHERE p.[Name] = @name
		
	)
	RETURN @count
END