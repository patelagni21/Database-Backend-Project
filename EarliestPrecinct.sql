CREATE PROCEDURE EarliestPrecinct
@votecount int
AS
	
	--select 
	SELECT	TOP 1 precinct,
			Timestamp,
			SUM(totalvotes) AS TV
			
			
	from	Penna
	WHERE TV = 2000
	

GO