select i.role, count(*) 
	from involved as i
	join person as p on i.personId = p.id
	where p.name like 'Q%'
	group by i.role;