1.
select max(count_lang),CountryCode from(select count(Language)as count_lang,CountryCode from CountryLanguage GROUP by CountryCode) as result

1.
select count_lang,CountryCode from (select count(Language)as count_lang,CountryCode from CountryLanguage GROUP by CountryCode) as result ORDER by (count_lang) desc limit 5 



2.
SELECT cc.name as country,c.name as city,population FROM City c,Country cc where c.countrycode=cc.code AND c.population=(SELECT max(population) from City where CountryCode=c.CountryCode )


3.
select count(id) from City where state='Tamil Nadu'
select sum(population)as 'total population' from City where state='Tamil Nadu' 
select sum(population)as 'total population' from City where state='Tamil Nadu'AND (name='Coimbatore' OR name= 'Tiruchirapalli' OR name='Salem')


4.
SELECT Name,population from City where Name in('Madurai','Coimbatore','Tirunelveli','Salem','Erode') ORDER BY FIELD(Name,'Madurai','Coimbatore','Tirunelveli','Salem','Erode')

