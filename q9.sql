with institutionPaperCount as
(
    select institution, region, country, sum(totalcount) as paperCount
    from authors natural join institutions
    group by institution, region, country
)

select t1.country, t1.institution, t1.paperCount as CountryCount
from institutionPaperCount t1
where paperCount >= (
    select max(paperCount) from institutionPaperCount t2 where t1.country = t2.country
)
order by country, institution;