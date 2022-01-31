CREATE PROCEDURE Winner
@precint varchar(max)
AS

	--showing who won this election
	 SELECT CASE
       WHEN
       (
           SELECT	    SUM(Biden) AS 'Bvotes'
           FROM			Penna
           where		precinct = @precint
       ) >
       (
           SELECT SUM(Trump) AS 'Tvotes'
           FROM Penna
           where		precinct = @precint
       ) THEN
           'Biden won'
       ELSE
           'Trump Won'
   END 

GO