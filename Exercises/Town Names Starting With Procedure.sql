CREATE PROCEDURE
usp_GetTownsStartingWith(@Starting NVARCHAR(50))
AS
(
	SELECT 
	[Name]
	FROM Towns
	WHERE [NAME] LIKE @Starting +'%'
)