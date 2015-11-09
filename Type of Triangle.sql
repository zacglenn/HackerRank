/*
Problem Statement

You are given a table, Triangles, containing three columns: A, B and C. Each row of the table denotes the length of the three sides of a triangle.

Write a query to find the type of each triangle based on side lengths. Output one of the following statements for each row entry in the table:

    Not A Triangle: If the given values of A, B and C don't form a triangle.
    Equilateral: If the triangle is equilateral. (All 3 sides are equal in length)
    Isosceles: If the triangle is isosceles. (2 sides are equal in length)
    Scalene: If the triangle is scalene. (All 3 sides have differing lengths)

Sample Input

Sample Output

Isosceles
Equilateral
Scalene
Not A Triangle
*/

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select  case
            --Not A Triangle: If the given values of A, B and C don't form a triangle.
            when a+b<=c or b+c<=a or a+c<=b then 'Not A Triangle'
            --Equilateral: If the triangle is equilateral. (All 3 sides are equal in length)
            when a=b and b=c and a=b then 'Equilateral'
            --Isosceles: If the triangle is isosceles. (2 sides are equal in length)
            --
            --Scalene: If the triangle is scalene. (All 3 sides have differing lengths)
            when a!=b and b!=c and a!=c then 'Scalene'
            else 'Isosceles'
        end as newCol
from triangles;
