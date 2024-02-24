CREATE FUNCTION udf_GetTouristsCountOnATouristSite (@Site VARCHAR(50)) 
RETURNS INT
AS
BEGIN
	DECLARE  @returnedValues INT = 
	(
		SELECT 
		COUNT(t.Id)
		FROM Sites AS s
		JOIN SitesTourists AS st ON st.SiteId = s.Id
		JOIN Tourists AS t ON t.Id = st.TouristId
		WHERE s.[Name] = @Site
		
	)
	RETURN @returnedValues

END

 