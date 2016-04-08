select count(*) 
	from (select count(*)
		from involved as i1
		join involved as i2 on i1.personId = i2.personId
		where i1.role = 'director' and i2.role = 'actor'
		group by i1.personId) actordirectors;