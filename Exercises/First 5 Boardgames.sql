SELECT TOP(5)
bg.[Name]
,bg.Rating
,c.[Name]
FROM Boardgames AS bg
JOIN Categories AS c ON bg.CategoryId = c.Id
JOIN PlayersRanges AS pl ON bg.PlayersRangeId = pl.Id
WHERE bg.Rating > 7 AND (bg.[Name] LIKE '%a%')
OR bg.Rating > 7.5 AND pl.PlayersMin >= 2 AND pl.PlayersMax <=5
ORDER BY bg.[Name],bg.Rating DESC