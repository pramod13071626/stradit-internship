use company_database;

select * from employees limit 5;

CREATE TABLE employees_temp1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    dept_name varchar(50),
    salary INT,
    join_date DATE
);

INSERT INTO employees_temp1 (emp_id, emp_name, dept_id, dept_name, salary, join_date) VALUES
(1,'Pramod',1,'IT',55000,'2025-01-10'),
(2,'Vaishnavi',2,'Finance',65000,'2024-05-12'),
(3,'Saujendra',7,'Insurance',48000,'2025-03-18'),
(4,'Ankita',4,'Sales',75000,'2023-08-20'),
(5,'Ekta',3,'HR',60000,'2025-01-11'),
(6,'Nikhil',1,'IT',58000,'2024-09-14'),
(7,'Sai',3,'HR',62000,'2025-02-15'),
(8,'Shiva',2,'Finance',72000,'2024-11-09'),
(9,'Swaraj',5,'Marketing',85000,'2025-04-01'),
(10,'Kunal',4,'Sales',71000,'2024-07-25'),

(11,'Amit',1,'IT',54000,'2023-03-11'),
(12,'Rohit',2,'Finance',69000,'2024-01-12'),
(13,'Sneha',3,'HR',61000,'2025-05-10'),
(14,'Pooja',4,'Sales',78000,'2023-06-18'),
(15,'Riya',5,'Marketing',80000,'2025-04-21'),
(16,'Aditya',6,'Operations',50000,'2024-10-05'),
(17,'Rahul',7,'Insurance',47000,'2025-02-08'),
(18,'Priya',8,'Support',45000,'2023-09-13'),
(19,'Neha',1,'IT',59000,'2024-12-20'),
(20,'Yash',2,'Finance',73000,'2025-01-19'),

(21,'Aarav',3,'HR',62000,'2023-05-15'),
(22,'Tanvi',4,'Sales',76000,'2024-08-10'),
(23,'Om',5,'Marketing',83000,'2025-02-12'),
(24,'Meera',6,'Operations',52000,'2023-11-01'),
(25,'Rakesh',7,'Insurance',49000,'2024-04-03'),
(26,'Kiran',8,'Support',46000,'2025-03-15'),
(27,'Anjali',1,'IT',60000,'2024-07-22'),
(28,'Mohan',2,'Finance',71000,'2023-06-27'),
(29,'Harsh',3,'HR',64000,'2025-01-17'),
(30,'Asha',4,'Sales',79000,'2024-03-14'),

(31,'Deepak',5,'Marketing',81000,'2025-05-11'),
(32,'Nitin',6,'Operations',53000,'2023-10-09'),
(33,'Payal',7,'Insurance',50000,'2024-01-16'),
(34,'Isha',8,'Support',47000,'2025-04-25'),
(35,'Vikas',1,'IT',61000,'2024-08-30'),
(36,'Simran',2,'Finance',74000,'2023-09-12'),
(37,'Raj',3,'HR',65000,'2025-02-28'),
(38,'Komal',4,'Sales',80000,'2024-06-05'),
(39,'Gaurav',5,'Marketing',84000,'2023-07-17'),
(40,'Manisha',6,'Operations',54000,'2025-01-03'),

(41,'Rutuja',7,'Insurance',51000,'2024-11-18'),
(42,'Abhishek',8,'Support',48000,'2023-04-09'),
(43,'Sahil',1,'IT',62000,'2025-03-30'),
(44,'Tina',2,'Finance',75000,'2024-10-14'),
(45,'Naina',3,'HR',66000,'2023-08-29'),
(46,'Kartik',4,'Sales',82000,'2025-05-08'),
(47,'Dev',5,'Marketing',85000,'2024-02-11'),
(48,'Bhavna',6,'Operations',55000,'2023-12-01'),
(49,'Rohan',7,'Insurance',52000,'2025-01-29'),
(50,'Aditi',8,'Support',49000,'2024-05-22'),

(51,'Pritam',1,'IT',63000,'2023-06-06'),
(52,'Shreya',2,'Finance',76000,'2024-07-19'),
(53,'Viraj',3,'HR',67000,'2025-04-16'),
(54,'Krishna',4,'Sales',83000,'2023-11-30'),
(55,'Jyoti',5,'Marketing',86000,'2024-03-27'),
(56,'Sameer',6,'Operations',56000,'2025-02-09'),
(57,'Mitali',7,'Insurance',53000,'2024-09-01'),
(58,'Nilesh',8,'Support',50000,'2023-05-24'),
(59,'Akash',1,'IT',64000,'2025-03-11'),
(60,'Chaitali',2,'Finance',77000,'2024-08-04'),

(61,'Varun',3,'HR',68000,'2023-07-10'),
(62,'Sakshi',4,'Sales',84000,'2025-01-26'),
(63,'Tejas',5,'Marketing',87000,'2024-06-13'),
(64,'Pallavi',6,'Operations',57000,'2023-10-22'),
(65,'Amol',7,'Insurance',54000,'2025-04-07'),
(66,'Kavya',8,'Support',51000,'2024-01-28'),
(67,'Sandeep',1,'IT',65000,'2023-09-19'),
(68,'Rekha',2,'Finance',78000,'2025-02-14'),
(69,'Vivek',3,'HR',69000,'2024-05-09'),
(70,'Monika',4,'Sales',85000,'2023-12-12'),

(71,'Ajay',5,'Marketing',88000,'2025-03-20'),
(72,'Poonam',6,'Operations',58000,'2024-11-04'),
(73,'Ritesh',7,'Insurance',55000,'2023-08-15'),
(74,'Sonali',8,'Support',52000,'2025-01-07'),
(75,'Mahesh',1,'IT',66000,'2024-07-26'),
(76,'Irfan',2,'Finance',79000,'2023-06-02'),
(77,'Seema',3,'HR',70000,'2025-05-14'),
(78,'Dhiraj',4,'Sales',86000,'2024-02-20'),
(79,'Lata',5,'Marketing',89000,'2023-11-08'),
(80,'Parth',6,'Operations',59000,'2025-04-18'),

(81,'Ravina',7,'Insurance',56000,'2024-09-29'),
(82,'Arjun',8,'Support',53000,'2023-05-16'),
(83,'Madhuri',1,'IT',67000,'2025-02-22'),
(84,'Bhavesh',2,'Finance',80000,'2024-08-31'),
(85,'Sonal',3,'HR',71000,'2023-10-17'),
(86,'Yogesh',4,'Sales',87000,'2025-03-09'),
(87,'Nandini',5,'Marketing',90000,'2024-04-24'),
(88,'Chetan',6,'Operations',60000,'2023-12-28'),
(89,'Trisha',7,'Insurance',57000,'2025-01-15'),
(90,'Hemant',8,'Support',54000,'2024-06-07'),

(91,'Kishor',1,'IT',68000,'2023-09-03'),
(92,'Lavanya',2,'Finance',81000,'2025-04-29'),
(93,'Tarun',3,'HR',72000,'2024-02-02'),
(94,'Geeta',4,'Sales',88000,'2023-07-21'),
(95,'Ramesh',5,'Marketing',91000,'2025-05-05'),
(96,'Shalini',6,'Operations',61000,'2024-01-18'),
(97,'Farhan',7,'Insurance',58000,'2023-11-14'),
(98,'Nupur',8,'Support',55000,'2025-03-01'),
(99,'Anurag',1,'IT',69000,'2024-08-08'),
(100,'Divya',2,'Finance',82000,'2023-06-25');
-- Assign row numbers department-wise
-- Sort employees by joining date


select *, 
row_number() over( partition by dept_name order by join_date) as sortted_emp from employees_temp1
limit 25 ;


-- Rank employees department-wise, handle rank ties
select *, 
rank() over( partition by dept_name order by salary desc) as ranked_by_dept from employees_temp1
limit 35 ;

select *, 
dense_rank() over( partition by dept_name order by salary desc) as ranked_by_dept from employees_temp1
limit 35 ;

-- student marks and dense rank


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    class VARCHAR(10),
    marks INT
);

INSERT INTO students (student_id, student_name, class, marks) VALUES
(1, 'Asha', '10A', 95),
(2, 'Ravi', '10A', 90),
(3, 'Tina', '10A', 90),
(4, 'Raj', '10A', 85),
(5, 'Pramod', '10A', 82),
(6, 'Vaishnavi', '10A', 88),
(7, 'Saujendra', '10A', 76),
(8, 'Ankita', '10A', 91),
(9, 'Ekta', '10A', 79),
(10, 'Nikhil', '10A', 84),

(11, 'Sai', '10B', 93),
(12, 'Shiva', '10B', 89),
(13, 'Swaraj', '10B', 89),
(14, 'Kunal', '10B', 81),
(15, 'Amit', '10B', 74),
(16, 'Rohit', '10B', 86),
(17, 'Sneha', '10B', 92),
(18, 'Pooja', '10B', 78),
(19, 'Riya', '10B', 83),
(20, 'Aditya', '10B', 90),

(21, 'Rahul', '10C', 87),
(22, 'Priya', '10C', 94),
(23, 'Neha', '10C', 94),
(24, 'Yash', '10C', 80),
(25, 'Aarav', '10C', 77),
(26, 'Tanvi', '10C', 85),
(27, 'Om', '10C', 91),
(28, 'Meera', '10C', 73),
(29, 'Rakesh', '10C', 88),
(30, 'Kiran', '10C', 82),

(31, 'Anjali', '10D', 96),
(32, 'Mohan', '10D', 90),
(33, 'Harsh', '10D', 84),
(34, 'Asha', '10D', 79),
(35, 'Deepak', '10D', 75),
(36, 'Nitin', '10D', 88),
(37, 'Payal', '10D', 92),
(38, 'Isha', '10D', 86),
(39, 'Vikas', '10D', 81),
(40, 'Simran', '10D', 89),

(41, 'Raj', '10E', 93),
(42, 'Komal', '10E', 87),
(43, 'Gaurav', '10E', 83),
(44, 'Manisha', '10E', 91),
(45, 'Rutuja', '10E', 78),
(46, 'Abhishek', '10E', 85),
(47, 'Sahil', '10E', 90),
(48, 'Tina', '10E', 90),
(49, 'Naina', '10E', 76),
(50, 'Kartik', '10E', 82);


select *,
dense_rank() over (partition by class order by marks) as student_marks_by_dens_rank,
rank() over (partition by class order by marks) as student_marks_by_r
from students;


-- ruuning total and cumulative growth
WITH sales1 AS (
    SELECT 
        sale_date, 
        SUM(sale_amount) AS total_sales
    FROM sales
    GROUP BY sale_date
)
SELECT 
    sale_date,
    total_sales,
    SUM(total_sales) OVER (
        ORDER BY sale_date
    ) AS cumulative_growth
FROM sales1
ORDER BY sale_date
LIMIT 25;

-- 

CREATE TABLE stock_prices (
    trade_date DATE PRIMARY KEY,
    stock_price DECIMAL(10,2)
);

INSERT INTO stock_prices (trade_date, stock_price) VALUES
('2025-01-01', 100.00),
('2025-01-02', 105.00),
('2025-01-03', 110.00),
('2025-01-04', 115.00),
('2025-01-05', 112.00),
('2025-01-06', 118.00),
('2025-01-07', 120.00),
('2025-01-08', 117.00),
('2025-01-09', 122.00),
('2025-01-10', 125.00),

('2025-01-11', 128.00),
('2025-01-12', 126.00),
('2025-01-13', 130.00),
('2025-01-14', 135.00),
('2025-01-15', 132.00),
('2025-01-16', 138.00),
('2025-01-17', 140.00),
('2025-01-18', 137.00),
('2025-01-19', 142.00),
('2025-01-20', 145.00),

('2025-01-21', 148.00),
('2025-01-22', 146.00),
('2025-01-23', 150.00),
('2025-01-24', 155.00),
('2025-01-25', 152.00),
('2025-01-26', 158.00),
('2025-01-27', 160.00),
('2025-01-28', 157.00),
('2025-01-29', 162.00),
('2025-01-30', 165.00),

('2025-01-31', 168.00),
('2025-02-01', 166.00),
('2025-02-02', 170.00),
('2025-02-03', 175.00),
('2025-02-04', 172.00),
('2025-02-05', 178.00),
('2025-02-06', 180.00),
('2025-02-07', 177.00),
('2025-02-08', 182.00),
('2025-02-09', 185.00),

('2025-02-10', 188.00),
('2025-02-11', 186.00),
('2025-02-12', 190.00),
('2025-02-13', 195.00),
('2025-02-14', 192.00),
('2025-02-15', 198.00),
('2025-02-16', 200.00),
('2025-02-17', 197.00),
('2025-02-18', 202.00),
('2025-02-19', 205.00);

-- moving average and actual prive vs avg


SELECT 
    trade_date,
    stock_price AS actual_price,
    ROUND(
        AVG(stock_price) OVER (
            ORDER BY trade_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ), 2
    ) AS moving_avg_3_day
FROM stock_prices
ORDER BY trade_date;

SELECT 
    trade_date,
    stock_price AS actual_price,
    ROUND(
        AVG(stock_price) OVER (
            ORDER BY trade_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ), 2
    ) AS moving_avg_3_day,
    ROUND(
        stock_price - AVG(stock_price) OVER (
            ORDER BY trade_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ), 2
    ) AS difference
FROM stock_prices
ORDER BY trade_date;

-- previous day sales using lag() and daily differences 
with days as (
select sale_date,sale_amount, 
lag(sale_amount) over (partition by sale_date order by sale_amount desc ) as previous_day
from sales)
select sale_date, previous_day, sale_amount,
(previous_day - sale_amount) as daily_differences from days;


-- next day quantity and stock drops

CREATE TABLE inventory (
    stock_date DATE PRIMARY KEY,
    quantity INT
);

INSERT INTO inventory (stock_date, quantity) VALUES
('2025-01-01', 100),
('2025-01-02', 95),
('2025-01-03', 120),
('2025-01-04', 90),
('2025-01-05', 85),
('2025-01-06', 110),
('2025-01-07', 105),
('2025-01-08', 130),
('2025-01-09', 125),
('2025-01-10', 140);


with inven1 as (
select *,
lead(quantity) over (order by stock_date ) as next_day
from inventory)
select *,
(next_day - quantity ) as drop_price from inven1
order by drop_price desc;


-- 


