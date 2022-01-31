CREATE PROCEDURE VotesPerDay
@DAY DATE
AS
	DECLARE		 @DAYd as datetime
	set			@DAYd = @DAY
	SELECT		Biden,Trump,totalvotes

	from		Penna
	where		@DAYd = Timestamp


GO