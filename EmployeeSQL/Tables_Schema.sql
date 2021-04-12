-- Creating table schema
drop table if exists departments CASCADE;
drop table if exists dep_emp;
drop table if exists dep_manager;
drop table if exists employees CASCADE;
drop table if exists salaries;
drop table if exists titles;

-- Create a table of departments
CREATE TABLE departments (
PRIMARY KEY(dept_no),
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL
);

select * from departments

-- Create table title
CREATE TABLE title (
PRIMARY KEY (title_id),
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL
);
	
select * from title



-- Create table employees
CREATE TABLE employees (
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_title_id) REFERENCES title(title_id),
emp_no INT NOT NULL,	
emp_title_id VARCHAR NOT NULL,
birth_date	VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,	
last_name VARCHAR NOT NULL,	
sex VARCHAR NOT NULL,	
hire_date VARCHAR NOT NULL
);

select * from employees

-- Create table dep_emp
CREATE TABLE dep_emp (
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no	INT NOT NULL,
dept_no VARCHAR NOT NULL
);

select * from dep_emp

-- Create table dep_manager
CREATE TABLE dep_manager (
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no	VARCHAR NOT NULL,
emp_no INT NOT NULL
);

select * from dep_manager

-- Create table salaries
CREATE TABLE salaries (
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no INT NOT NULL,
salary INT NOT NULL
);

select * from salaries


