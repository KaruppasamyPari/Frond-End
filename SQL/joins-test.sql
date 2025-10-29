-- create a table for oreders table and product table 

use tt;
CREATE TABLE Products (product_id INT PRIMARY KEY, product_name VARCHAR(50), price INT);

CREATE TABLE Orders (order_id INT PRIMARY KEY, product_id INT, quantity INT, order_date DATE);

INSERT INTO Products (product_id, product_name, price) VALUES
(1, 'Laptop', 60000),
(2, 'Mouse', 500),
(3, 'Keyboard', 1200),
(4, 'Monitor', 15000),
(5, 'Printer', 8000),
(6, 'Mobile', 25000),
(7, 'Tablet', 18000),
(8, 'Headset', 2000),
(9, 'Camera', 30000),
(10, 'Speaker', 4000),
(11, 'Charger', 700),
(12, 'Smart Watch', 10000);



INSERT INTO Orders (order_id, product_id, quantity, order_date) VALUES
(101, 1, 2, '2025-09-01'),
(102, 2, 5, '2025-09-02'),
(103, 3, 3, '2025-09-03'),
(104, 4, 1, '2025-09-04'),
(105, 5, 4, '2025-09-05'),
(106, 6, 2, '2025-09-06'),
(107, 8, 6, '2025-09-07'),
(108, 9, 1, '2025-09-08'),
(109, 15, 2, '2025-09-09'), 
(110, 16, 1, '2025-09-10');



select * from Products inner join Orders ON Products.product_id = Orders.product_id;

select Orders.order_id, Orders.product_id, quantity, order_date, product_name, price from Orders left join Products
ON Orders.product_id = Products.product_id;

select Orders.order_id, Orders.product_id, quantity, order_date, product_name, price from Orders right join Products
ON Orders.product_id = Products.product_id;









CREATE TABLE Student (id INT PRIMARY KEY,name VARCHAR(100),placement_score INT,course VARCHAR(50),degree VARCHAR(50));


INSERT INTO Student (id, name, placement_score, course, degree) VALUES
(1, 'Ravi', 85, 'Computer Science', 'B.Tech'),
(2, 'Priya', 92, 'Information Technology', 'B.Tech'),
(3, 'Arun', 75, 'Electronics', 'B.E'),
(4, 'Divya', 88, 'Mechanical', 'B.E');


CREATE VIEW student_view AS SELECT id, name, course, degree FROM Student;

CREATE VIEW teacher_view AS SELECT * FROM Student;

SELECT * FROM student_view;

SELECT * FROM teacher_view;










CREATE TABLE PizzaDetails (
    Pizza_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Size VARCHAR(10),
    Crust VARCHAR(20),
    Toppings VARCHAR(100),
    Price DECIMAL(5,2),
    Vegetarian VARCHAR(3) 
);


INSERT INTO PizzaDetails (Pizza_ID, Name, Size, Crust, Toppings, Price, Vegetarian) VALUES
(1, 'Margherita', 'Medium', 'Classic', 'Cheese, Tomato', 8.99, 'Yes'),
(2, 'Pepperoni Feast', 'Large', 'Thin', 'Pepperoni, Cheese', 12.99, 'No'),
(3, 'Veggie Supreme', 'Large', 'Thick', 'Onion, Bell Pepper, Olive', 11.49, 'Yes'),
(4, 'BBQ Chicken', 'Medium', 'Cheese Burst', 'Chicken, BBQ Sauce', 13.99, 'No'),
(5, 'Hawaiian Delight', 'Medium', 'Classic', 'Ham, Pineapple', 12.49, 'No'),
(6, 'Farmhouse', 'Small', 'Thin', 'Tomato, Corn, Mushroom', 7.99, 'Yes'),
(7, 'Chicken Tikka', 'Large', 'Stuffed', 'Chicken, Tikka Sauce, Onion', 14.49, 'No'),
(8, 'Cheese Lovers', 'Medium', 'Classic', 'Mozzarella, Cheddar', 9.49, 'Yes'),
(9, 'Spicy Veggie', 'Medium', 'Thin', 'Jalapeños, Onion, Capsicum', 10.49, 'Yes'),
(10, 'Meat Lover’s', 'Large', 'Thick', 'Pepperoni, Ham, Bacon', 15.99, 'No'),
(11, 'Double Cheese', 'Small', 'Cheese Burst', 'Extra Cheese', 8.49, 'Yes'),
(12, 'Mexican Green Wave', 'Medium', 'Stuffed', 'Onion, Capsicum, Jalapeños', 10.99, 'Yes'),
(13, 'Buffalo Chicken', 'Medium', 'Classic', 'Chicken, Buffalo Sauce, Onion', 12.99, 'No'),
(14, 'Paneer Tandoori', 'Medium', 'Thin', 'Paneer, Onion, Spices', 11.99, 'Yes'),
(15, 'Sausage Supreme', 'Large', 'Thick', 'Sausage, Pepper, Cheese', 13.99, 'No'),
(16, 'Garden Fresh', 'Small', 'Classic', 'Tomato, Capsicum, Corn', 7.49, 'Yes'),
(17, 'Chicken Supreme', 'Medium', 'Stuffed', 'Chicken, Onion, Cheese', 13.49, 'No'),
(18, 'Classic Cheese', 'Small', 'Classic', 'Cheese', 6.99, 'Yes'),
(19, 'Peri Peri Veg', 'Medium', 'Cheese Burst', 'Peri Peri Sauce, Veggies', 11.49, 'Yes'),
(20, 'Bacon BBQ', 'Large', 'Thick', 'Bacon, BBQ Sauce, Cheese', 14.99, 'No'),
(21, 'Triple Veggie', 'Medium', 'Thin', 'Olive, Onion, Tomato', 10.49, 'Yes'),
(22, 'Pepperoni Classic', 'Small', 'Classic', 'Pepperoni, Cheese', 9.49, 'No'),
(23, 'Spicy Paneer', 'Medium', 'Stuffed', 'Paneer, Jalapeños, Spices', 12.49, 'Yes'),
(24, 'Seafood Special', 'Large', 'Thin', 'Shrimp, Crab, Cheese', 16.99, 'No'),
(25, 'Corn & Cheese', 'Small', 'Classic', 'Corn, Cheese', 7.99, 'Yes'),
(26, 'All Meat Combo', 'Large', 'Cheese Burst', 'Pepperoni, Bacon, Sausage', 16.49, 'No'),
(27, 'Tomato Basil', 'Medium', 'Thin', 'Tomato, Basil, Cheese', 9.99, 'Yes'),
(28, 'Chicken & Mushroom', 'Medium', 'Classic', 'Chicken, Mushroom, Cheese', 13.49, 'No'),
(29, 'Deluxe Veggie', 'Large', 'Thick', 'Capsicum, Onion, Olive, Tomato', 12.99, 'Yes'),
(30, 'Fiery Chicken', 'Medium', 'Stuffed', 'Spicy Chicken, Jalapeños, Cheese', 14.49, 'No');


-- How many pizzas are there for each crust type?
SELECT Crust, COUNT(*) FROM PizzaDetails GROUP BY Crust;

-- What is the average price of pizzas grouped by size?
SELECT Size, AVG(Price) FROM PizzaDetails GROUP BY Size;

-- How many vegetarian and non-vegetarian pizzas are available?
SELECT Vegetarian, COUNT(*) FROM PizzaDetails GROUP BY Vegetarian;

-- Show size and vegetarian combinations with average price under $10.
SELECT Size, Vegetarian, AVG(Price) AS AvgPrice FROM PizzaDetails GROUP BY Size, Vegetarian HAVING AvgPrice < 10;

-- List crusts where both vegetarian and non-vegetarian pizzas exist.
SELECT Crust FROM PizzaDetails GROUP BY Crust HAVING COUNT(DISTINCT Vegetarian) = 2;

-- Find all sizes where the total number of pizzas is more than 8.
SELECT Size, COUNT(*) AS PizzaCount FROM PizzaDetails GROUP BY Size HAVING PizzaCount > 8;

-- Show vegetarian pizzas grouped by crust having average price above $11.
SELECT Crust, AVG(Price) AS AvgPrice FROM PizzaDetails WHERE Vegetarian = 'Yes' GROUP BY Crust HAVING AvgPrice > 11;

-- Show crusts where the maximum pizza price is over $14.
SELECT Crust, MAX(Price) AS MaxPrice FROM PizzaDetails GROUP BY Crust HAVING MaxPrice > 14;

-- Find all size-crust combinations with more than 2 pizzas.
SELECT Size, Crust, COUNT(*) AS PizzaCount FROM PizzaDetails GROUP BY Size, Crust HAVING PizzaCount > 2;

-- Find vegetarian types where total pizzas are less than 10.
SELECT Vegetarian, COUNT(*) AS PizzaCount FROM PizzaDetails GROUP BY Vegetarian HAVING PizzaCount < 10;

-- List crusts with average price between $10 and $13.
SELECT Crust, AVG(Price) AS AvgPrice FROM PizzaDetails GROUP BY Crust HAVING AvgPrice BETWEEN 10 AND 13;

-- Show sizes where the average price is more than $12.
SELECT Size, AVG(Price) AS AvgPrice FROM PizzaDetails GROUP BY Size HAVING AvgPrice > 12;

-- Show crust types that are used in more than 5 pizzas.
SELECT Crust, COUNT(*) AS PizzaCount FROM PizzaDetails GROUP BY Crust HAVING PizzaCount > 5;

-- What is the total price of all pizzas grouped by size?
SELECT Size, SUM(Price)  FROM PizzaDetails GROUP BY Size;

-- Count how many pizzas have each unique size.
SELECT Size, COUNT(*)  FROM PizzaDetails GROUP BY Size;

-- What is the minimum price for each crust type?
SELECT Crust, MIN(Price)  FROM PizzaDetails GROUP BY Crust;

-- List all crust types and the number of vegetarian pizzas for each.
SELECT Crust, COUNT(*)  FROM PizzaDetails WHERE Vegetarian = 'Yes' GROUP BY Crust;

-- Show total pizzas by size and vegetarian type.
SELECT Size, Vegetarian, COUNT(*)  FROM PizzaDetails GROUP BY Size, Vegetarian;

-- What is the average price for each crust type?
SELECT Crust, AVG(Price) AS AvgPrice FROM PizzaDetails GROUP BY Crust;


select * from PizzaDetails;

