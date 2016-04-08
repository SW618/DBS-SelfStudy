select g.genre, avg(r.rating)
	from genre as g
	join ratings as r on r.movieId = g.movieId
	group by g.genre
	having count(r.rating) >=2;