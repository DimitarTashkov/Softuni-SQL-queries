SELECT Mountains.MountainRange
,p.PeakName
,p.Elevation
FROM Mountains
JOIN Peaks AS p ON p.MountainId =Mountains.Id
WHERE Mountains.MountainRange = 'Rila'
ORDER BY p.Elevation DESC

