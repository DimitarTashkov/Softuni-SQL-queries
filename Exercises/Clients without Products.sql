SELECT 
c.Id
,c.[Name] AS [Client]
,CONCAT(a.StreetName, ' ',a.StreetNumber, ', ',a.City, ', ', a.PostCode,', ', cnt.[Name]) AS [Address]
FROM Clients AS c
JOIN Addresses AS a ON c.AddressId = a.Id
JOIN Countries AS cnt ON a.CountryId = cnt.Id
LEFT JOIN ProductsClients AS cp ON c.Id = cp.ClientId
WHERE cp.ProductId IS NULL
ORDER BY c.[Name]