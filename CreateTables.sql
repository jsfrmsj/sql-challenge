-- Creat Table for employees / primary key
CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    emp_title VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM employees

--Create Table for departments / secondary key
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments

--Create Table for salaries
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary VARCHAR NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM salaries

DROP TABLE dept_emp
--Create Table for dept_emp
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

SELECT * FROM dept_emp

DROP TABLE dept_manager
--Create Table for dept_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

SELECT * FROM dept_manager

--Create Table for titles
CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles
