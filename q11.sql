with bigConferences
as
(
    select conference
    from 
    (
        select distinct conference, year
        from authors
    )
    group by conference
    having count(*) > 15
    order by conference
)

(select distinct name from authors)
except
(select name
from authors
where conference in (select * from bigConferences))
order by name;