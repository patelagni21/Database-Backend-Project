CREATE PROCEDURE PrecinctsFullLead
@candidate varchar(20)
AS
	if @candidate = 'Biden'
		SELECT		precinct,Timestamp
					--Biden,
		FROM		Penna
		WHERE Biden > Trump
		--SHOW THE DIFFERENCES
		
	ELSE
		SELECT		precinct,Timestamp
					--Trump,
					
		FROM		Penna
		WHERE Trump > Biden
	
GO
