-- Mini SQL Project — Employee Management System
-- Problem Statement: 
-- Build a mini employee management database system.
-- Requirements:
		-- Create database
			-- Create tables
			-- Insert records
			-- Update records
			-- Delete records
			-- Filter data
			-- Perform aggregations
			 
			-- Generate reports:
			-- Highest paid employee
			-- Department-wise employee count
			-- Average salary report
			-- Employees hired after specific date
			-- Top 3 salaries


create database company_db;

use company_db;


create table employees(
emp_id int primary key not null unique,
emp_name varchar(20),
dept varchar(20),
salary int,
join_date date);



Insert into employees values
 (1,'Pramod','IT',50000,'2026-05-10'),
 (2,'Vaishnavi','Finance',65000,'2025-06-16'),
 (3,'Saujendra', 'Insurance',40000,'2026-02-26'),
 (4,'Ankita','Sales',85000,'2024-09-30'),
 (5,'Ekta','HR',60000,'2026-03-31'),
 (6,'Nikhil','IT',45000,'2025-04-15'),
 (7,'Sai','HR',65000,'2025-01-01'),
 (8,'Shiva','Finance',85000,'2026-01-23'),
 (9,'Swaraj','Marketting',100000,'2025-04-15'),
 (10,'Kunal','Sales',75000,'2025-12-29');
 
-- 4. Display All Employees

select * from employees;

-- 5. Display Specific Columns emp_name, salary

select emp_name, salary from employees;

-- 6. Filter Employees by Department by IT.

select * from employees
where dept = 'IT';


-- 7,8. Filter Employees by Salary with aescending and descending:

select * from employees
where salary >50000
order by salary DESC;

-- 9. Find Total Number of Employees

select Count(*) from employees;

-- 10,11,12. Find Highest Salary, min, avg.

select max(salary ) as max_sal,min(salary) as min_sal, avg(salary) as avg_sal from employees;

-- 13. Group Employees by Department

select dept, count(emp_id) from employees
group by dept;



-- 14. Find Department-wise Average Salary 

select dept, round(avg(salary),2) as avg_sal from employees
group by dept;


-- 15. Update Employee Salary by 10%

SET SQL_SAFE_UPDATES = 0;

update employees
set salary = salary * 1.10
where dept = 'IT';

-- 16. Delete Employee Record

delete from employees
where emp_id = 5;

-- 17. Use LIKE Operator start with A and end with n

select emp_name from employees
where emp_name like 'A%';

select emp_name from employees
where emp_name like '%n';


-- 18. Use BETWEEN Operator

select emp_id, emp_name, salary from employees
where salary between 40000 and 70000;


-- 19. Employees hired after specific date

select emp_id, emp_name, join_date from employees
where join_date >= '2025-12-31';

select salary,emp_name from employees
where salary < (select max(salary) from employees)
limit 3;

select emp_id,emp_name, salary 
from(
select emp_id,emp_name, salary, 
dense_rank() over (order by salary desc) as rnk
from employees)t
where rnk=3;


select * from employees;






