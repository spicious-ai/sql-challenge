--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON 
e.emp_no = s.emp_no
;
--List the first name, last name, and hire date for the employees who were hired in 1986.
select *
from employees
;

SELECT first_name, last_name, hire_date
from employees
WHERE hire_date LIKE '%1986'
;
--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
inner join dept_manager as dm on
e.emp_no = dm.emp_no
inner join departments as d on
d.dept_no = dm.dept_no
;
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on
e.emp_no = de.emp_no
inner join departments as d on
de.dept_no = d.dept_no
;
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'
;
--List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name
from employees as e
where emp_no in
(
	select emp_no
	from dept_emp as de
	where dept_no in
	(
		select dept_no
		from departments as d
		where dept_name = 'Sales'))
;
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
where emp_no in
(
	select emp_no
	from dept_emp as de
	where dept_no in
	(
		select dept_no
		from departments as d
		where dept_name = 'Sales' or dept_name = 'Development'))
;
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT COUNT(last_name), last_name
FROM employees 
GROUP BY last_name
ORDER BY count DESC
;