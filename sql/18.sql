select g1.genre, g2.genre, count(*)
	from genre as g1
	join genre as g2 on g1.movieId = g2.movieId
	where g1.genre != g2.genre
	group by g1.genre, g2.genre
	having g1.genre < g2.genre /* To avoid symetric dublicates */
	order by count(*) DESC
	limit 1;