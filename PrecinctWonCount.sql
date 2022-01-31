CREATE PROCEDURE PrecinctWonCount
@candidate varchar(20)
AS
	if @candidate = 'Biden'
		SELECT		COUNT(precinct) AS PrecinctCOUNT
		FROM		Penna
		WHERE Biden > Trump
		--SHOW THE DIFFERENCES
		
	ELSE
		SELECT		COUNT(precinct) AS PrecinctCOUNT
		FROM		Penna
		WHERE Trump > Biden
	
GO

