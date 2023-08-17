---Data Analysis Queries-----
---Answer for Question 1-----
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
On (e.emp_no = s.emp_no);
-------------------------------
---Answer for Question 2------
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' 
	AND '1986-12-31';
--------------------------------
---Answer for Question 3------
SELECT dm.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS dp ON dm.dept_no = dp.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;
--------------------------------
---Answer for Question 4------
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS dp ON de.dept_no = dp.dept_no;
--------------------------------
---Answer for Question 5------
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules' 
	AND last_name LIKE 'B%';
--------------------------------
---Answer for Question 6------
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
WHERE dept_no = 'd007';
--------------------------------
---Answer for Question 7------
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS dp ON de.dept_no = dp.dept_no
WHERE de.dept_no IN ('d007', 'd005');
--------------------------------
---Answer for Question 8------
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;