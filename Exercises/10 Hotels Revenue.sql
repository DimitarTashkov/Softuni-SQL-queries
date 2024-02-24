SELECT 
	h.[Name] AS [HotelName]
	,SUM(DATEDIFF(DAY,b.ArrivalDate,b.DepartureDate) * r.Price) AS [HotelRevenue]
FROM Bookings AS b
JOIN Hotels AS h ON h.Id = b.HotelId
JOIN Rooms AS r ON r.Id = b.RoomId
JOIN Tourists AS t ON t.Id = b.TouristId
GROUP BY h.[Name]
ORDER BY HotelRevenue DESC