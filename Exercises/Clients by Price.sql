SELECT  
c.[Name] AS [Client]
,FLOOR(AVG(p.Price)) AS [Average Price]
FROM Clients AS c
LEFT JOIN ProductsClients AS pc ON c.Id = pc.ClientId
LEFT JOIN Products AS p ON p.Id = pc.ProductId
JOIN Vendors AS v ON v.Id = p.VendorId
WHERE v.NumberVAT LIKE '%FR%'
GROUP BY c.[Name]
ORDER BY FLOOR(AVG(p.Price)),c.[Name] DESC
