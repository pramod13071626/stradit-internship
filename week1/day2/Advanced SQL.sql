-- Problem 1 — Create Employee Table
-- Create a table named employees with columns: emp_id, emp_name, department, salary, joining_date
-- Requirements: emp_id should be Primary Key, salary should not accept negative values

use company_db;

select * from employees;

-- Problem 2 — Insert Employee Records
-- Insert employee records into employees table for Rahul, Priya, and Amit

-- Problem 3 — Fetch All Employees
-- Write a query to display all records from the employees table

select * from employees;

-- Problem 4 — Display Specific Columns
-- Write a query to display only employee name and department from employees table

select emp_name, dept from employees;


-- Problem 5 — Employees with High Salary
-- Write a query to find employees whose salary is greater than 50000

select * from employees
where salary >50000
order by salary DESC;

-- Problem 6 — Employees from IT Department
-- Write a query to display all employees working in the IT department

select * from employees
where dept = 'IT';


-- Problem 7 — Sort Employee Salaries
-- Write a query to display employees sorted by salary in ascending and descending order
select * from employees
where salary >50000
order by salary DESC;


-- Problem 8 — Update Employee Salary
-- Increase Rahul’s salary to 60000

SET SQL_SAFE_UPDATES = 0;

update employees
set salary = 60000
where emp_name = 'Pramod';


-- Problem 9 — Delete Employee Record
-- Delete the employee whose employee ID is 2


delete from employees
where emp_id = 5;


-- Problem 10 — Count Employees
-- Write a query to count the total number of employees in the company

select Count(*) from employees;

-- Problem 11 — Find Average Salary by Department
-- Write a query to calculate the average salary for each department

select max(salary ) as max_sal,min(salary) as min_sal, avg(salary) as avg_sal from employees;

-- Problem 12 — Find Highest Paid Employee
-- Write a query to find the employee with the highest salary

select max(salary ) as max_sal  from employees;

-- Problem 13 — Find Second Highest Salary
-- Write a query to find the second highest salary from the employees table

select * from employees where salary =(select max(salary) from employees);

-- Problem 14 — Employees Joined After 2023
-- Write a query to display employees who joined after January 1, 2023

select emp_id, emp_name, join_date from employees
where join_date >= '2023-01-01';


-- Problem 15 — Find Duplicate Departments
-- Write a query to identify departments appearing more than once

select dept from employees group by dept having count(*) > 1;

-- Problem 16 — Group Employees by Department
-- Display department name and number of employees in each department

select dept, count(*) from employees group by dept;


-- Problem 17 — Departments with More Than 2 Employees
-- Write a query using GROUP BY and HAVING to display departments having more than 2 employees

select dept from employees group by dept having count(*) > 2;

-- Problem 18 — Find Employees with NULL Salary
-- Write a query to identify employees whose salary value is NULL

select * from employees where salary is NULL;

-- Problem 19 — Use DISTINCT
-- Write a query to display unique department names from the employees table

select distinct dept from employees;

-- Problem 20 — Top 3 Highest Salaries
-- Write a query to display the top 3 employees with highest salaries

select * from employees order by salary desc limit 3;

-- JOINS Problem Statements

-- Create Tables
-- employees table with columns: emp_id, emp_name, dept_id
-- departments table with columns: dept_id, dept_name

create table department (dept_id int primary key not null, dept_name varchar(50));

insert into department values (1,'IT'),(2, 'HR'),(3,'Finance'),(4,'Marketting'),(5,'sales');

select * from department;
-- Problem 21 — INNER JOIN
-- Write a query to display employee name and department name using INNER JOIN

select e.emp_name, d.dept_name from employees e
inner join department d on e.dept=d.dept_id;
-- Problem 22 — LEFT JOIN
-- Write a query to display all employees even if department information is missing

select e.*, d.dept_name from employees e 
left join department d on e.dept=d.ept_id;

-- Problem 23 — RIGHT JOIN
-- Write a query to display all departments even if no employee belongs to that department

select d.*, e.emp_name from employees e 
right join department d on e.dept=d.dept_id;

-- Problem 24 — Find Employees Without Departments
-- Write a query to identify employees whose department details are missing

select e.* from employees e
left join department d on e.dept = d.dept_id
where d.dept_id is NULL;


-- Problem 25 — Self Join
-- Write a query to display employee name and manager name from the same employees table

select e.emp_name as employee_name,
       m.emp_name as manager_name
from employees e
left join employees m
on e.manager_id = m.emp_id;


-- Problem 26 — Create E-Commerce Database
-- Design database tables for Customers, Orders, Products, and Payments

create table customers(
customer_id int primary key,
customer_name varchar(100),
email varchar(100)
);

create table products(
product_id int primary key,
product_name varchar(100),
category varchar(50),
price decimal(10,2)
);

create table orders(
order_id int primary key,
customer_id int,
order_date date,
foreign key (customer_id) references customers(customer_id)
);

create table payments(
payment_id int primary key,
order_id int,
amount decimal(10,2),
payment_date date,
foreign key (order_id) references orders(order_id)
);


-- Problem 27 — Monthly Sales Report
-- Write a query to calculate total monthly sales

select month(payment_date) as month,
sum(amount) as total_sales
from payments
group by month(payment_date);


-- Problem 28 — Top Selling Product
-- Find the product with highest sales quantity

select product_id,
sum(quantity) as total_quantity
from order_items
group by product_id
order by total_quantity desc
limit 1;


-- Problem 29 — Customers with No Orders
-- Write a query to identify customers who never placed any order

select c.*
from customers c
left join orders o
on c.customer_id = o.customer_id
where o.order_id is NULL;


-- Problem 30 — Total Revenue by Category
-- Calculate total revenue generated by each product category

select p.category,
sum(oi.quantity * p.price) as total_revenue
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.category;


-- Problem 31 — Running Total Using Window Function
-- Write a query to calculate cumulative sales

select payment_date,
amount,
sum(amount) over(order by payment_date) as running_total
from payments;


-- Problem 32 — Rank Employees by Salary
-- Use SQL ranking functions to rank employees based on salary

select emp_name,
salary,
rank() over(order by salary desc) as salary_rank
from employees;


-- Problem 33 — Find Duplicate Records
-- Identify duplicate employee records based on email address

select email,
count(*) as duplicate_count
from employees
group by email
having count(*) > 1;


-- Problem 34 — Stored Procedure Problem
-- Create a stored procedure to insert new employee, validate salary, and return success message

delimiter //

create procedure add_employee(
in p_emp_id int,
in p_emp_name varchar(100),
in p_salary decimal(10,2)
)
begin
if p_salary > 0 then
insert into employees(emp_id, emp_name, salary)
values(p_emp_id, p_emp_name, p_salary);

select 'Employee Added Successfully' as message;
else
select 'Invalid Salary' as message;
end if;
end //

delimiter ;


-- Problem 35 — Transaction Management
-- Deduct balance from one account and add balance to another account

start transaction;

update accounts
set balance = balance - 5000
where account_id = 1;

update accounts
set balance = balance + 5000
where account_id = 2;

commit;

-- Rollback if transaction fails
rollback;


-- Problem 36 — Netflix Recommendation Analytics
-- Find most watched category

select category,
count(*) as watch_count
from netflix
group by category
order by watch_count desc
limit 1;

-- Find highest rated movies

select movie_name,
rating
from netflix
order by rating desc;

-- Find active users

select user_id,
count(*) as total_watches
from netflix
group by user_id
order by total_watches desc;


-- Problem 37 — Uber Ride Analytics
-- Calculate average trip distance

select avg(distance) as avg_trip_distance
from rides;

-- Find busiest city

select city,
count(*) as total_rides
from rides
group by city
order by total_rides desc
limit 1;

-- Find highest earning driver

select driver_id,
sum(fare) as total_earnings
from rides
group by driver_id
order by total_earnings desc
limit 1;


-- Problem 38 — Amazon Order Analytics
-- Find top customers

select customer_id,
sum(total_amount) as total_spent
from orders
group by customer_id
order by total_spent desc;

-- Find repeat customers

select customer_id,
count(order_id) as total_orders
from orders
group by customer_id
having count(order_id) > 1;

-- Find highest revenue products

select product_id,
sum(quantity * price) as revenue
from order_items
group by product_id
order by revenue desc;


-- Problem 39 — Banking Fraud Detection
-- Identify suspicious transactions amount > 1 lakh

select *
from transactions
where amount > 100000;

-- Multiple transactions within 1 minute

select t1.account_id,
t1.transaction_time,
t2.transaction_time
from transactions t1
join transactions t2
on t1.account_id = t2.account_id
and t1.transaction_id <> t2.transaction_id
and abs(timestampdiff(second,
t1.transaction_time,
t2.transaction_time)) <= 60;


-- Problem 40 — Hospital Management System
-- Find doctors with most patients

select doctor_id,
count(patient_id) as total_patients
from appointments
group by doctor_id
order by total_patients desc;

-- Find available beds

select count(*) as available_beds
from beds
where status = 'Available';

-- Find monthly patient count

select month(appointment_date) as month,
count(patient_id) as patient_count
from appointments
group by month(appointment_date);


-- Problem 41
-- Increase salary by 10% for all IT employees

update employees
set salary = salary * 1.10
where dept = 'IT';


-- Problem 42
-- Show department name, employee count, average salary, and highest salary

select dept,
count(*) as employee_count,
avg(salary) as avg_salary,
max(salary) as highest_salary
from employees
group by dept;


-- Problem 43
-- Delete employee record while ensuring related orders remain safe

delete from employees
where emp_id = 5;

-- Use foreign key constraints with ON DELETE SET NULL or ON DELETE CASCADE
-- to maintain referential integrity


-- Problem 44
-- Identify duplicate customer entries

select customer_name,
email,
count(*) as duplicate_count
from customers
group by customer_name, email
having count(*) > 1;


-- Problem 45
-- Find customers who generated highest revenue in last 6 months

select customer_id,
sum(total_amount) as total_revenue
from orders
where order_date >= date_sub(curdate(), interval 6 month)
group by customer_id
order by total_revenue desc;