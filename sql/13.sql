with cc as (select * from person where name = 'Charles Chaplin')

select count(*)
	from person as p, cc
	where p.gender = 'f' 
	and (p.birthdate > cc.deathdate 
		or cc.birthdate > p.deathdate);