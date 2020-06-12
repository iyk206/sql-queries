--Question 1.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no

--Question 2.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%86'

--Question 3.
SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no

--Question 4.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex
FROM employees
WHERE employees.first_name LIKE 'Hercules' AND employees.last_name LIKE 'B%'

--Question 5.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name LIKE 'Sales'

--Question 6.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name LIKE 'Sales' OR departments.dept_name LIKE 'Development'

--Question 7.
SELECT last_name, count(last_name) AS "Last_Name_Count" 
FROM employees
GROUP BY last_name
ORDER BY "Last_Name_Count" desc