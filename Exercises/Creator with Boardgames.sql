CREATE FUNCTION udf_CreatorWithBoardgames(@name NVARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @totalGames INT = 
	(
		SELECT COUNT(BoardgameId)
		FROM CreatorsBoardgames AS cbg
		JOIN Creators AS c ON c.Id = cbg.CreatorId
		WHERE c.FirstName = @name
	)
	RETURN @totalGames

END