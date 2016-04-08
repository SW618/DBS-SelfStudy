select m.title, r.refs 
        from movie as m 
        join (select r1.fromid as id, count(r2.toid) as refs 
                    from movieref as r1 
                    join movieref as r2 on r1.toid = r2.fromid 
                    group by r1.fromid) 
        as r on m.id = r.id 
            order by r.refs desc
            limit 1;