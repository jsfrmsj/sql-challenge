
--LIST employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY emp_no ASC;

--List first name, last name, hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date < '12/31/1986'
ORDER BY hire_date ASC;

-- List the manager of each department along with their department number, dept name, employee number, ln, fn
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager m
JOIN employees e 
ON m.emp_no = e.emp_no
JOIN departments d 
ON m.dept_no = d.dept_no;

--List the department of each employee with employee number, ln, fn and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN  dept_emp  
ON e.emp_no = dept_emp.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no;

--List fn, ln and sex for employees whose first name is 'Hercules' and last names begin with 'B'
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' AND last_name iLIKE 'B%';

--List each employee in the Sales department, including their employee number, ln, fn, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN  dept_emp  
ON e.emp_no = dept_emp.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN  dept_emp  
ON e.emp_no = dept_emp.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development');

--List the frequency counts, in descending order, of employee's last names
SELECT last_name, COUNT(last_name) AS "Total"
FROM employees
GROUP BY last_name
ORDER BY "Total" DESC;