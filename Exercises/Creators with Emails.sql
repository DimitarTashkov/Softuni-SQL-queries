WITH GamesRankedByCreator AS( 
SELECT 
CONCAT_WS(' ',FirstName,LastName ) AS [FullName]
,c.Email
,bg.Rating
,RANK() OVER (PARTITION BY Email ORDER BY bg.Rating DESC) AS [GameRank]
FROM Creators AS c
JOIN CreatorsBoardgames AS cbg ON c.Id = cbg.CreatorId
JOIN Boardgames AS bg ON bg.Id = cbg.BoardgameId
--1 way
WHERE c.Email LIKE '%.com'
--2 way WHERE RIGHT(c.Email,4) = '.com'
)
SELECT 
FullName
,Email
,Rating
FROM GamesRankedByCreator
WHERE GameRank = 1
ORDER BY FullName ASC