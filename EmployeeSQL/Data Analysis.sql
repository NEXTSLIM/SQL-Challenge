--DATA ANALYSIS--

--(1)List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

--(2)List first name, last name, and hire date for employees who were hired in 1986.//TO REVIEW
SELECT employees.first_name, employees.last_name,employees.hire_date 
FROM employees
WHERE hire_date like '%1986'

--(3)List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dep_manager.emp_no, employees.last_name, employees.first_name 
FROM departments
JOIN dep_manager
ON departments.dept_no = dep_manager.dept_no
JOIN employees
ON dep_manager.emp_no = employees.emp_no;

--(4)List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT dep_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dep_emp
JOIN employees
ON dep_emp.emp_no = employees.emp_no
JOIN departments
ON dep_emp.dept_no = departments.dept_no;

--(5)List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
--(6)List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dep_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dep_emp
JOIN employees
ON dep_emp.emp_no = employees.emp_no
JOIN departments
ON dep_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--(7)List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
SELECT dep_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dep_emp
JOIN employees
ON dep_emp.emp_no = employees.emp_no
JOIN departments
ON dep_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

--(8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;

