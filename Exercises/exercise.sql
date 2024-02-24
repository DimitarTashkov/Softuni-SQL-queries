SELECT 
v.[Name]
,COUNT(*) [TotalMinions]
FROM Villains AS v
JOIN MinionsVillains AS mv ON mv.VillainId = v.Id
JOIN Minions AS m ON mv.MinionId = m.Id
GROUP BY v.[Name]
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC
