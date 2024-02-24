CREATE PROCEDURE usp_SearchByCountry(@country NVARCHAR(50))
AS
BEGIN
		SELECT 
			t.[Name]
			,t.PhoneNumber
			,t.Email
			,COUNT(b.RoomId) AS [CountOfBookings]
		FROM Bookings AS b
		JOIN Tourists AS t ON t.Id = b.TouristId
		JOIN Countries AS c ON t.CountryId = c.Id
		WHERE c.[Name] = @country
		GROUP BY t.[Name],t.PhoneNumber,t.Email
		ORDER BY t.[Name],CountOfBookings DESC
END