SELECT 
t.Id
,t.[Name]
,t.PhoneNumber
FROM Tourists AS t
LEFT JOIN Bookings AS b ON b.TouristId = t.Id
LEFT JOIN Hotels AS h ON h.Id = b.HotelId
WHERE h.Id IS NULL
ORDER BY t.[Name]