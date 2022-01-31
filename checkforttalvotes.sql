--sum of total votes for trump cannot be more than totalvotes
SELECT CASE
      WHEN(
		select		(biden+trump)
		from		penna
		) >
		(
		SELECT		totalvotes 
		from		Penna
		)THEN
           'votes of both biden and trump cant exceed total votes'
       ELSE
           'sum of votes are ok'
   END 
