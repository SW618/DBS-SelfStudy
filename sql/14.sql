select g.genre, avg(r.rating)
	from genre as g
	join ratings as r on r.movieId = g.movieId
	group by g.genre
	order by avg(r.rating) DESC;