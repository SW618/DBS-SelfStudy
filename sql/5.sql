select COUNT(*)
from 
(
	select COUNT(*)
	from ratings 
	group by userId
	having count(*) >= 3
) as ratedby3ormore;
