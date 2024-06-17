select country, count(*) as institutionCount
from institutions
group by country
order by country;