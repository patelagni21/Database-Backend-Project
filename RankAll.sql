CREATE PROCEDURE RankAll
@precinct varchar(max)
AS
	
	select * from(
			SELECT	precinct,
					totalvotes,
					RANK() OVER (PARTITION BY precinct ORDER BY totalvotes) rank
	
			from	Penna
			 ) 
	a where precinct = @precinct
	
	
	
GO