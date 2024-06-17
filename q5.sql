select distinct name
from authors
where name not in 
    (
    select name
    from authors natural join conferences
    where
        conferences.area <> 'theory'
        or authors.year > 1980
    )
order by name;