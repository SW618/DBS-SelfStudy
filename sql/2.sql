select year, count(*)
	from movie as m
	join ratings as r on r.movieId = m.id
	group by year
	order by year;