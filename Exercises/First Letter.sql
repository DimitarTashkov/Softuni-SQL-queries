SELECT FirstLetter FROM
(SELECT
LEFT(wd.FirstName,1) AS FirstLetter
FROM WizzardDeposits AS wd
WHERE wd.DepositGroup = 'Troll Chest') AS subq
GROUP BY FirstLetter
ORDER BY FirstLetter