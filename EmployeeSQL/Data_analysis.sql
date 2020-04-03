--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT a.emp_no, a.last_name, a.first_name, a.gender, b.salary 
FROM employees a
JOIN salaries b
ON a.emp_no = b.emp_no;



--List employees who were hired in 1986.
SELECT * 
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;



--list the manager of each department with the following information: 
--department number,department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
SELECT a.dept_no, b.dept_name, a.emp_no, c.first_name, c.last_name, a.from_date, a.to_date 
FROM dept_manager a
JOIN department b
ON a.dept_no= b.dept_no
JOIN employees c
ON a.emp_no= c.emp_no;



--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM employees a
JOIN dept_emp c
ON a.emp_no= c.emp_no
JOIN department b
ON b.dept_no= c.dept_no;



--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';



--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM employees a
JOIN dept_emp c
ON a.emp_no= c.emp_no
JOIN department b
ON c.dept_no= b.dept_no
WHERE b.dept_name ='Sales';



--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM employees a
JOIN dept_emp c
ON a.emp_no= c.emp_no
JOIN department b
ON c.dept_no= b.dept_no
WHERE b.dept_name LIKE 'Sales' 
	OR b.dept_name LIKE 'Development';



--In descending order, list the frequency count of employee last names, i.e.,
--how many employees share each last name.
SELECT last_name, COUNT(last_name) as employee_count
FROM employees
GROUP BY last_name
ORDER BY employee_count DESC;