select p.name, p.birthdate 
        from involved as i 
        join person as p on i.personid = p.id 
            where i.movieid = (select id 
                                    from movie 
                                        where title = 'Pulp Fiction') 
                order by p.birthdate;