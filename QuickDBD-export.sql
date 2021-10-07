﻿
CREATE TABLE Departments (
    dept_no varchar(128)   NOT NULL,
    dept_name varchar(128)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Titles (
    title_id varchar(128)   NOT NULL,
    title varchar(128)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE Employees (
    emp_no bigint   NOT NULL,
    emp_title varchar(128)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(128)   NOT NULL,
    last_name varchar(128)   NOT NULL,
    sex varchar(128)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Salaries (
    emp_no bigint   NOT NULL,
    salary decimal   NOT NULL
);

CREATE TABLE Dept_Manager (
    dept_no varchar(128)   NOT NULL,
    emp_no bigint   NOT NULL
);

CREATE TABLE Dept_Emp (
    dept_no varchar(128)   NOT NULL,
    emp_no bigint   NOT NULL
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title FOREIGN KEY(emp_title)
REFERENCES Titles (title_id);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

