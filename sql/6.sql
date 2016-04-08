select name, birthdate
	from person as p
	join involved as i on p.id = i.personId
	join movie as m on m.id = i.movieId
	where m.title = 'Pulp Fiction'
	order by birthdate;