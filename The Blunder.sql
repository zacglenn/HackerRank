/*
Problem Statement

You are given a table, Employees, containing three columns: ID, Name and Salary (employee salary is in $ per month). The value of Salary is < 105.

Samantha was appointed to calculate the average salary of all the employees per month. When she copied the values to a new sheet, she didn't type any of the zeroes in the salary and computed the wrong result.

Your task is to find the amount of error in the result. Round up the resulting error to the next integer.

Sample Input

Sample Output

2061


Explanation

The following table shows the salaries WITHOUT zeroes copied by Samantha:

Thus, she computed the average paid salary as 98.00, but the ACTUAL average paid salary was  2159.00.

Therefore, the resulting error = 2159.00 - 98.00 = 2061
*/

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select ceiling(avg(cast(salary as decimal)) - avg(cast(REPLACE(salary,'0','') as decimal)))
from employees
