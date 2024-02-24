UPDATE PlayersRanges
SET PlayersMax += 1
WHERE PlayersMax = 2 AND PlayersMin = 2

UPDATE Boardgames
SET [Name] += 'V2'
WHERE YearPublished >= 2020

DELETE FROM CreatorsBoardgames
WHERE BoardgameId IN(1,16,31,47)

DELETE FROM Boardgames
WHERE PublisherId IN(1,16)

DELETE FROM Publishers
WHERE AddressId = 5

DELETE FROM Addresses
WHERE LEFT(Town,1) = 'L'