---Data Analysis Queries-----
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
Join salaries as s
On (e.emp_no = s.emp_no);
-------------------------------------------------
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' 
	And '1986-12-31';
-----------------------------------------------







