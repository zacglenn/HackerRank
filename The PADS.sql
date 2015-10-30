/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select Name+ case when Occupation = 'Professor' then '(P)' when Occupation = 'Actor' then '(A)' when Occupation = 'Doctor' then '(D)' when Occupation = 'Singer' then '(S)' end
from Occupations
order by Name;

select 'There are total ', count(Occupation) , ' ', lower(Occupation)+'s.'
from Occupations
group by Occupation
order by count(Occupation), Occupation;
