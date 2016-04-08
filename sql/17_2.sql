select count(*) 
        from person as p 
        join (select distinct personid 
                    from involved 
                        where role = 'actor') 
        as ia on p.id = ia.personid 
        join (select distinct personid 
                    from involved 
                        where role = 'director') 
        as ib on p.id = ib.personid;