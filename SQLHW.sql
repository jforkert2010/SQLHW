--1
SELECT e.first_name, e.last_name, s.salary, e.sex, e.emp_no 
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no
--2
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
Where
e.hire_date between '1986-01-01' and '1986-12-31'
--3
SELECT e.first_name, e.last_name, dm.emp_no, dm.dept_no, d.dept_name 
FROM dept_manager AS dm
INNER JOIN employees AS e ON
dm.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = dm.dept_no;
--4
SELECT e.first_name, e.last_name, de.emp_no, de.dept_no, d.dept_name 
FROM dept_emp AS de
INNER JOIN employees AS e ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
--5
SELECT e.first_name, e.last_name, e.sex 
FROM employees AS e
WHERE e.last_name LIKE 'B%' AND e.first_name = 'Hercules'

--6
SELECT e.first_name, e.last_name, de.emp_no, de.dept_no, d.dept_name 
FROM dept_emp AS de
INNER JOIN employees AS e ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales';
--7
SELECT e.first_name, e.last_name, de.emp_no, de.dept_no, d.dept_name 
FROM dept_emp AS de
INNER JOIN employees AS e ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';
--8
SELECT last_name, COUNT(*) AS CountOf
FROM employees
GROUP BY last_name
ORDER BY countof DESC
--Final Task
SELECT e.first_name, e.last_name, s.salary, e.sex, e.emp_no 
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no
WHERE e.emp_no ='499942'; 