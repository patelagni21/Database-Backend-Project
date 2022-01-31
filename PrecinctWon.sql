CREATE PROCEDURE PrecinctWon
@candidate varchar(20)
AS
	if @candidate = 'Biden'
		SELECT		precinct,
					--Biden,
					(Biden- Trump)as difference
		FROM		Penna
		WHERE Biden > Trump
		--SHOW THE DIFFERENCES
		
	ELSE
		SELECT		precinct,
					--Trump,
					(Trump- Biden)as difference
		FROM		Penna
		WHERE Trump > Biden
	
GO

