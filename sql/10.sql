select m.language, avg(r.rating)
	from movie as m
	join ratings as r on r.movieId = m.id
	where m.year = 1994 and m.language != ''
	group by m.language
	order by avg(r.rating);