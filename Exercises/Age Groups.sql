SELECT AgeGroup, COUNT(*) FROM
(SELECT
CASE
WHEN wd.Age >=0 AND wd.Age <= 10 THEN ('[0-10]')
WHEN wd.Age >=11 AND wd.Age <= 20 THEN ('[11-20]')
WHEN wd.Age >=21 AND wd.Age <= 30 THEN ('[21-30]')
WHEN wd.Age >=31 AND wd.Age <= 40 THEN ('[31-40]')
WHEN wd.Age >=41 AND wd.Age <= 50 THEN ('[41-50]')
WHEN wd.Age >=51 AND wd.Age <= 60 THEN ('[51-60]')
ELSE('[61+]')
END AS AgeGroup
FROM WizzardDeposits AS wd) AS AgeGrouped
GROUP BY AgeGroup