SELECT 
 w.DepositGroup
,SUM(w.DepositAmount) AS [TotalSum]
FROM WizzardDeposits AS w
WHERE MagicWandCreator = ('Ollivander family')
GROUP BY DepositGroup
HAVING SUM(w.DepositAmount) <= 150000
ORDER BY SUM(w.DepositAmount) DESC