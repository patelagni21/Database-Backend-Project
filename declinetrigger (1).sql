create trigger declinetrigger
on Penna
for
delete
as
print'you can not do deletion in this table '
rollback;