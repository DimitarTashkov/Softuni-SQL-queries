SELECT  
mc.CountryCode
,COUNT(m.MountainRange) AS RangesCount
FROM MountainsCountries AS mc
JOIN Mountains AS m ON	m.Id = mc.MountainId
WHERE mc.CountryCode IN ('BG','RU','US')
GROUP BY mc.CountryCode