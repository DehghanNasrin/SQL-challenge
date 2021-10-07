--1:
select "Employees".emp_no, last_name, first_name, sex, salary
from  "Employees"
left join "Salaries"
on "Employees".emp_no="Salaries".emp_no;


--2:
select "Employees".first_name, "Employees".last_name, "Employees".hire_date
from "Employees"
where "Employees".hire_date like '%1986';


--3:
select "Employees".emp_no, "Employees".first_name,"Employees".last_name, "Departments".dept_no, "Departments".dept_name
from "Employees"
inner join "Dept_Manager" on "Employees".emp_no="Dept_Manager".emp_no 
inner join "Departments" on "Dept_Manager".dept_no="Departments".dept_no;


--4:
select "Employees".emp_no, "Employees".first_name,"Employees".last_name, "Departments".dept_name 
from "Employees"
inner join "Dept_Emp" on "Employees".emp_no = "Dept_Emp".emp_no
inner join "Departments" on "Departments".dept_no = "Dept_Emp".dept_no;


--5:
select "Employees".first_name,"Employees".last_name, "Employees".sex 
from "Employees"
where "Employees".first_name = 'Hercules' and "Employees".last_name like 'B%';


--6:
select "Employees".emp_no, "Employees".first_name,"Employees".last_name, "Departments".dept_name 
from "Employees"
inner join "Dept_Emp" on "Employees".emp_no = "Dept_Emp".emp_no
inner join "Departments" on "Departments".dept_no = "Dept_Emp".dept_no
where "Departments".dept_name = 'Sales';


--7:
select "Employees".emp_no, "Employees".first_name,"Employees".last_name, "Departments".dept_name 
from "Employees"
inner join "Dept_Emp" on "Employees".emp_no = "Dept_Emp".emp_no
inner join "Departments" on "Departments".dept_no = "Dept_Emp".dept_no
where "Departments".dept_name = 'Sales' or "Departments".dept_name = 'Development';


--8:
select last_name, count(last_name) as num_last_name
from "Employees"
group by last_name
order by num_last_name desc;