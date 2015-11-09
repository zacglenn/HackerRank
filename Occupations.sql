/*
Problem Statement

You are given a table, Occupations, containing two columns: Name and Occupation.

Occupation is one of the followings:
    Doctor
    Professor
    Singer
    Actor

Write a query to output the names underneath the corresponding occupation in the following format:

+--------+-----------+--------+------+
| Doctor | Professor | Singer | Actor|
+--------+-----------+--------+------+

Names must be listed in alphabetically sorted order.

Sample Input

Sample Output:

Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria

Note:

Print "NULL" when there are no more names corresponding to an occupation.
*/


/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT DOCTOR, PROFESSOR, SINGER, ACTOR FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME, OCCUPATION) AS RN FROM OCCUPATIONS) AS SOURCETABLE PIVOT (MAX(Name) FOR OCCUPATION IN ([Doctor], [Professor], [Singer], [Actor])) AS P;

/*
Formatting
*/
SELECT DOCTOR, PROFESSOR, SINGER, ACTOR
FROM (
      SELECT *, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME, OCCUPATION) AS RN
      FROM OCCUPATIONS) AS SOURCETABLE
PIVOT (MAX(Name) FOR OCCUPATION IN ([Doctor], [Professor], [Singer], [Actor])) AS P;
