CREATE PROCEDURE RankCounty
@precinct varchar(max)
AS
	
	select * from(
			SELECT	precinct,
					totalvotes,
					geo,
					RANK() OVER (PARTITION BY precinct ORDER BY totalvotes) rank
	
			from	Penna
			 
			 ) 
	a where precinct = @precinct
	
	
	
GO