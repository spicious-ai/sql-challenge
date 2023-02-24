CREATE TABLE employees (
	emp_no INT PRIMARY KEY
	emp_title_id VARCHAR(5) NOT NULL
	birth_date VARCHAR(10)
	first_name VARCHAR(20)
	last_name VARCHAR(20)
	sex VARCHAR(1)
	hire_date VARCHAR(10)
);

CREATE TABLE dept_emp (
	emp_no INT
	dept_no VARCHAR(4)
);

CREATE TABLE salaries (
	emp_no INT
	salary INT
);

CREATE TABLE departments (
	dept_no VARCHAR(4)
	dept_name VARCHAR(20)
);

CREATE TABLE titles (
	title_id VARCHAR(5)
	title VARCHAR(40)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4)
	emp_no INT
);