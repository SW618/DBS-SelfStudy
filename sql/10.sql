select language, avg(rating)
	from movie as m
	join ratings as r on r.movieId = m.id
	where m.year = 1994
	group by language;