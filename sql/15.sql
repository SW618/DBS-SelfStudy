select genre, avg(rating)
	from genre as g
	join ratings as r on r.movieId = g.movieId
	group by genre
	having count(*) >=2;