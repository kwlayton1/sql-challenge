---Table Schemata----------
CREATE TABLE employees (
    emp_no serial PRIMARY KEY,
    emp_title_id varchar(20),
    birth_date date,
    first_name varchar(20), 
    last_name varchar(20),
    sex varchar(1),
    hire_date date
);
--------------------------
Create Table titles(
	title_id varchar(20) Primary Key,
	title varchar(20) 
);
---------------------------
CREATE TABLE salaries (
    emp_no serial,
    salary int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
----------------------------
Create Table departments(
	dept_no varchar(20) Primary Key,
	dept_name varchar(20) 
);
-----------------------------
Create Table dept_emp(
	emp_no int Not Null,
	dept_no varchar(20) Not Null,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
); 
-----------------------------
Create Table dept_manager(
	dept_no varchar(20) Not Null,
	emp_no int Not Null,
	FOREIGN Key (dept_no) REFERENCES departments(dept_no),
	FOREIGN Key (emp_no) REFERENCES employees(emp_no)
);