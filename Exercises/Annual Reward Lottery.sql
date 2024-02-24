CREATE PROCEDURE usp_AnnualRewardLottery(@TouristName VARCHAR(50))
AS
BEGIN
	DECLARE @keepReward VARCHAR(15)
	DECLARE @keepCountOfSites INT =
	(
	SELECT  
		COUNT(s.Id)
	FROM Tourists AS t
	JOIN SitesTourists AS st ON st.TouristId = t.Id
	JOIN Sites AS s ON s.Id = st.SiteId
	WHERE t.[Name] = @TouristName
	)
		IF(@keepCountOfSites >= 100)
		SET @keepReward = 'Gold badge'
		ELSE IF (@keepCountOfSites >= 50)
		SET @keepReward = 'Silver badge'
		ELSE IF (@keepCountOfSites >= 25)
		SET @keepReward = 'Bronze badge'

		UPDATE Tourists
		SET Reward = @keepReward
		WHERE [Name] = @TouristName

		SELECT  
		t.[Name]
		,t.Reward
		FROM Tourists AS t
		WHERE t.[Name] = @TouristName

	

END