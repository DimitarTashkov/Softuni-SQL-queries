SELECT 
c.LastName
,CEILING(AVG(bg.Rating)) AS [AverageRating]
,p.[Name] AS [PublisherName]
FROM Creators AS c
JOIN CreatorsBoardgames AS cbg ON c.Id = cbg.CreatorId
JOIN Boardgames AS bg ON cbg.BoardgameId = bg.Id
JOIN Publishers AS p ON p.Id = bg.PublisherId
WHERE p.[Name] = 'Stonemaier Games'
GROUP BY c.LastName,p.[Name]
ORDER BY AVG(bg.Rating) DESC