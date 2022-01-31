
create trigger OLDVOTES
BEFORE INSERT 
on 
Penna 
for each row 
set Penna.totalvotes = new.Trump+new.biden + old.totalvotes;

