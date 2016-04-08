with pf as (
	select i1.personId
		from movie as m
		join involved as i1 on i1.movieId = m.id
		where m.title = 'Pulp Fiction'
),
act as (
	select distinct pf1.personid
		from pf as pf1
		join involved as i1 on i1.personid = pf1.personid
		join involved as i2 on i1.movieid = i2.movieid
		join pf as pf2 on i2.personid = pf2.personid
		where i1.personid != i2.personid
			and i1.movieid != (select id from movie where title = 'Pulp Fiction')
)

select * from pf
	join person as p on p.id = pf.personid
	where not exists (select NULL from act where act.personid = pf.personid);