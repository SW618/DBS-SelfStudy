select title, avg(rating)
	from movie as m
	join ratings as r on r.movieId = m.id
	where m.year >= 1990 
	  and m.year  < 2000
	group by title
	having count(*) >= 2
	order by avg(rating) DESC
	limit 2;