/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/


SELECT e.emp_no , count(t.title) as " amount of titles"
from employees as e
join titles as t using (emp_no)
where extract (year from e.hire_date) > 1991
group By e.emp_no
having count (t.title) > 2
order by e.emp_no
