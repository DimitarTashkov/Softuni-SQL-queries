UPDATE Invoices
SET DueDate = '2023-04-01'
WHERE IssueDate BETWEEN '2022-11-01' AND '2022-11-30'

UPDATE Clients
SET AddressId = 3
WHERE [Name] LIKE '%CO%'

DELETE FROM Invoices
WHERE ClientId = 11
DELETE FROM ProductsClients
WHERE ClientId = 11
DELETE FROM Clients
WHERE NumberVAT LIKE 'IT%'

