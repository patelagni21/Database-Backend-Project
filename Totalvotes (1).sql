CREATE PROCEDURE Totalvotes

@timestamp varchar(200),
@category varchar(20)
AS
	IF @category = 'Biden'
	SELECT		precinct
		FROM		Penna
		WHERE Biden > Trump AND Timestamp = @timestamp
		ORDER BY Biden
	ELSE
	BEGIN
	   IF @category = 'Trump'
	   SELECT		precinct
		FROM		Penna
		WHERE Trump > Biden AND Timestamp = @timestamp
		ORDER BY Trump
	   ELSE
	   SELECT		precinct,
					Trump,
					Biden
					
		FROM		Penna
		WHERE Timestamp = @timestamp
		ORDER BY totalvotes
		
		  
END;

GO