SELECT 
t.[Name]
,t.Age
,t.PhoneNumber
,t.Nationality
,CASE WHEN(bp.[Name] IS NOT NULL) THEN bp.[Name] 
ELSE '(no bonus prize)'
END AS [Reward]
FROM Tourists AS t
LEFT JOIN TouristsBonusPrizes AS tb ON tb.TouristId = t.Id
LEFT JOIN BonusPrizes AS bp ON bp.Id = tb.BonusPrizeId
ORDER BY t.[Name]
