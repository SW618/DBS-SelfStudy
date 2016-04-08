select m.title, count(*)
	from movie as m
	join movieref as r1 on r1.fromId = m.id
	join movieref as r2 on r1.toId = r2.fromId
	group by m.id, m.title
	order by count(*) DESC
	limit 1;