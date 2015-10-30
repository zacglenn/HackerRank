/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select Name
from Students
where Marks > 75
order by right(Name, 3), ID
