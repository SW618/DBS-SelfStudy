select m.title, avg(rating)
	from movie as m
	join ratings as r on r.movieId = m.id
	join involved as i1 on i1.movieId = m.id
	join person as p1 on p1.id = i1.personId
	where p1.name = 'John Travolta'
	group by m.title
	order by avg(rating);
