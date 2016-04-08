select count(*)
	from 
	(
		select count(*)
		from ratings 
		group by userId
		having count(*) >= 3
	) as ratedby3ormore;
