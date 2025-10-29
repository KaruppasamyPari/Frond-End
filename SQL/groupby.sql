-- group by is usedd to group rows that have the same value into it.
-- always the group by follows with aggregate function.

-- syntax: for group by is
-- select columnname1,columnname2 aggregatefunction from table name
-- group by columnname1,columnname2

use sla_kknagar;

CREATE TABLE data (
    orderid INT PRIMARY KEY,
    customer_name VARCHAR(100),
    location VARCHAR(100),
    category VARCHAR(50),
    unitprice INT,
    quantity INT,
    sales INT
);

INSERT INTO data (orderid, customer_name, location, category, unitprice, quantity, sales) VALUES
(1, 'Sarah Lee', 'Mexico City', 'Electronics', 150, 1, 150),
(2, 'Michael Wong', 'Toronto', 'Furniture', 300, 1, 300),
(3, 'Emily Davis', 'San Francisco', 'Furniture', 150, 3, 450),
(4, 'David Kim', 'Vancouver', 'Clothing', 50, 5, 250),
(5, 'Sophia Patel', 'Tokyo', 'Electronics', 250, 2, 500),
(6, 'Liam Nguyen', 'Mexico City', 'Furniture', 400, 1, 400),
(7, 'Isabella Rossi', 'Toronto', 'Clothing', 75, 3, 225),
(8, 'Ethan Müller', 'San Francisco', 'Electronics', 180, 2, 360),
(9, 'Olivia Sato', 'Vancouver', 'Furniture', 350, 1, 350),
(10, 'Noah Dupont', 'Tokyo', 'Clothing', 60, 4, 240),
(11, 'Emma Hernandez', 'Mexico City', 'Electronics', 220, 2, 440),
(12, 'Jacob Kowalski', 'Toronto', 'Furniture', 280, 2, 560),
(13, 'Ava Morales', 'San Francisco', 'Clothing', 55, 5, 275),
(14, 'William Tanaka', 'Vancouver', 'Electronics', 190, 3, 570),
(15, 'Mia Dupuis', 'Tokyo', 'Furniture', 320, 1, 320),
(16, 'Alexander Ivanov', 'Mexico City', 'Clothing', 65, 4, 260),
(17, 'Isabella Garcia', 'Toronto', 'Electronics', 230, 2, 460),
(18, 'Daniel Moreno', 'San Francisco', 'Furniture', 290, 2, 580),
(19, 'Sophia Nguyen', 'Vancouver', 'Clothing', 70, 3, 210),
(20, 'John Smith', 'Tokyo', 'Electronics', 200, 2, 400);

select * from data;

-- What is the total sales amount for each product category?
select category ,sum(sales) from data group by category;

-- What is the average unit price in each location?
select location, avg(unitprice) from data group by location;

-- How many orders has each customer placed?
select orderid,customer_name, count(orderid) from data group by orderid,customer_name;
select count(quantity) from data;
select sum(quantity) from data;

-- What is the total quantity sold per location?
select location ,sum(quantity) from data group by location;

-- What is the minimum unit price in each product category?
SELECT category, MIN(unitprice) FROM data GROUP BY category;

-- What is the total number of orders in each location?
SELECT location, COUNT(orderid) FROM data GROUP BY location;

-- What is the average quantity sold per customer?
SELECT customer_name, AVG(quantity)  FROM data GROUP BY customer_name;

-- What is the total sales per location and category?
SELECT location, category, SUM(sales) FROM data GROUP BY location, category;

-- How many unique location bought items from each category?
select distinct(location), count(category) from data group by location;

-- What are the categories with total sales greater than 1000?
select category, sum(sales) as S from data group by category having S>1000;

-- Which locations have an average unit price greater than 200?
select location, avg(unitprice) as U from data group by location having U>200;

-- List customers who purchased more than 3 items in total.
select customer_name, sum(quantity) as Q from data group by customer_name having Q>3;

-- Which locations have more than 2 orders?
select location ,count(orderid) as O from data group by location having O;

-- What categories have an average quantity sold greater than 2?
select category,avg(quantity) as Q from data group by category having Q>2;

-- Find customers whose total sales exceed 500.
select customer_name,sum(sales) as S from data group by customer_name having S>500;

-- Which product categories in each location have total sales over 400?
select category,location ,sum(sales) as S from data group by category,location having S>400;

-- What locations have sold more than 10 items in total?
select location, sum(quantity) as Q from data group by location having Q>10;

-- List categories with maximum sales per order above 400.
select category, max(sales) as S from data group by category having S>400;

-- Which customers have placed more than one order?
SELECT customer_name, COUNT(orderid) AS Z FROM data GROUP BY customer_name HAVING Z>1;




CREATE TABLE employees3 (
    EmployeeID INT PRIMARY KEY,
    name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO employees3 (EmployeeID, name, Department, Salary) VALUES
(1, 'Alice Johnson', 'HR', 60000.00),
(2, 'Bob Smith', 'HR', 70000.00),
(3, 'Charlie Brown', 'IT', 80000.00),
(4, 'David Wilson', 'IT', 90000.00),
(5, 'Eva Green', 'Sales', 50000.00),
(6, 'Frank White', 'Sales', 50000.00),
(7, 'Grace Black', 'IT', 80000.00);


select * from employees3;

-- What is the total salary paid in each department?
select department ,sum(salary) from employees3 group by department;

-- What is the average salary of employees in each department?
select department ,avg(salary) from employees3 group by department;

-- What is the highest salary in each department?
select department ,max(salary) from employees3 group by department;

-- What is the lowest salary in each department?
select department ,min(salary) from employees3 group by department;

-- How many employees are there in each department?
select department, count(employeeid) from employees3 group by department;

-- How many distinct salary values are there in each department?
SELECT Department, COUNT(DISTINCT Salary) FROM employees3 GROUP BY Department;

-- Which departments have more than 2 employees?
select department,count(department) as DEPT from employees3 GROUP BY department having DEPT >2;

-- Which departments have a total salary greater than 150000?
SELECT Department, SUM(Salary) AS total_salary FROM employees3 GROUP BY Department HAVING SUM(Salary) > 150000;

-- Which departments have an average salary greater than 70000?
SELECT Department, AVG(Salary)  FROM employees3 GROUP BY Department HAVING AVG(Salary) > 70000;

-- Which departments have a maximum salary less than 90000?
SELECT Department, MAX(Salary) AS max_salary FROM employees3 GROUP BY Department HAVING MAX(Salary) < 90000;


-- having clause: which is used inside the group by to filter the record.
-- where clause


