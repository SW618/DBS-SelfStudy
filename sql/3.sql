select m.title, m.year
	from movie as m
	join involved as i1 on i1.movieId = m.id
	join involved as i2 on i2.movieId = m.id
	join person as p1 on p1.id = i1.personId
	join person as p2 on p2.id = i2.personId
	where p1.name = 'John Travolta' and p2.name = 'Uma Thurman';