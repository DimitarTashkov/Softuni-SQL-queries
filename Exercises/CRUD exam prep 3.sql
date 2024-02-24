UPDATE Sites
SET Establishment = '(not defined)'
WHERE Establishment IS NULL

DELETE  FROM TouristsBonusPrizes
WHERE BonusPrizeId = 5

DELETE  FROM BonusPrizes
WHERE [Name] = 'Sleeping bag '
