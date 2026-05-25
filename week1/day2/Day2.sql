create database pramod;
show databases;
use pramod;

-- Create a table named employees with columns:

create table employee(
emp_id int primary key unique not null, 
name varchar(20) not null, 
dept varchar(20) not null, 
sal int) check (sal>0);


-- Insert at least 5 employee records into the employees table.

Insert into employee values
 (1,'Pramod','IT',50000),
 (2,'Vaishnavi','Finance',65000),
 (3,'Saujendra', 'Insurance',40000),
 (4,'Ankita','Sales',85000),
 (5,'Ekta','HR',60000);
 
 -- Write a query to display all employee records.
 select * from employee;

-- Display only: employee name department from the employees table.
	
    select name, dept from employee;
    
-- Display employees who belong to the IT department.

	select * from employee where dept='IT';

 