select distinct institution, name
from institutions natural join authors
where
    institutions.country = 'il'
    and authors.totalcount >= 2
    and authors.conference like 'sig%'
order by institution, name;
