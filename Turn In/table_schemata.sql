CREATE TABLE titles (
	title_id VARCHAR(30) Primary Key,
	title VARCHAR(30) Not Null
);

CREATE TABLE employees (
	emp_no SERIAL Primary Key,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE departments (
	dept_no VARCHAR(30) Primary Key,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
	
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)	
);
