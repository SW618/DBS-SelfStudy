select m.title, m.year
	from movie as m
	join involved as i on i.movieId = m.id
	join person as p on p.id = i.personId
	where p.name = 'John Travolta' 
		and m.year >= 1980 
		and m.year <= 1989
	order by year;