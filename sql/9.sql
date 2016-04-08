select m.title, avg(r.rating)
	from movie as m
	join ratings as r on r.movieId = m.id
	where m.year >= 1990 
	  and m.year <= 1999
	group by m.title
	having count(r.rating) >= 2
	order by avg(r.rating) DESC
	limit 2;