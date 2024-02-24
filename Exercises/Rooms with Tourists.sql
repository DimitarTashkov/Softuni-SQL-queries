CREATE FUNCTION udf_RoomsWithTourists(@name NVARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @countOfPeople INT =
	(
		SELECT 
			SUM(b.ChildrenCount+b.AdultsCount)
		FROM Rooms AS r
		JOIN Bookings AS b ON b.RoomId = r.Id
		JOIN Tourists AS t ON t.Id = b.TouristId
		WHERE r.[Type] = @name

	)
	RETURN @countOfPeople
END
