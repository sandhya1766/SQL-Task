create database work;
use work;
create table customers(
customer_id int primary key,
name varchar(30),
city varchar(50),
join_date Date);
INSERT INTO Customers VALUES
(1,'Amit Sharma','Delhi','2023-01-15'),
(2,'Priya Singh','Mumbai','2023-02-10'),
(3,'Rahul Verma','Pune','2023-03-12'),
(4,'Sneha Patel','Ahmedabad','2023-03-15'),
(5,'Arjun Mehta','Jaipur','2023-04-01'),
(6,'Neha Gupta','Delhi','2023-04-05'),
(7,'Karan Malhotra','Chandigarh','2023-04-18'),
(8,'Riya Kapoor','Mumbai','2023-05-02'),
(9,'Vikas Yadav','Lucknow','2023-05-10'),
(10,'Pooja Jain','Indore','2023-05-21'),
(11,'Aman Tiwari','Bhopal','2023-06-02'),
(12,'Kriti Sharma','Delhi','2023-06-11'),
(13,'Aditya Raj','Patna','2023-06-20'),
(14,'Simran Kaur','Amritsar','2023-07-01'),
(15,'Rohit Singh','Kanpur','2023-07-08'),
(16,'Nisha Verma','Nagpur','2023-07-20'),
(17,'Sanjay Gupta','Surat','2023-08-03'),
(18,'Meera Joshi','Pune','2023-08-15'),
(19,'Tarun Bansal','Delhi','2023-08-28'),
(20,'Divya Shah','Ahmedabad','2023-09-10'),
(21,'Abhishek Kumar','Patna','2023-09-15'),
(22,'Ritika Soni','Indore','2023-09-18'),
(23,'Manish Yadav','Lucknow','2023-09-25'),
(24,'Kunal Jain','Jaipur','2023-10-02'),
(25,'Anjali Mehta','Mumbai','2023-10-10'),
(26,'Varun Khanna','Delhi','2023-10-20'),
(27,'Rashmi Chawla','Chandigarh','2023-11-01'),
(28,'Deepak Singh','Kanpur','2023-11-08'),
(29,'Isha Kapoor','Mumbai','2023-11-14'),
(30,'Nitin Arora','Delhi','2023-11-21'),
(31,'Shivam Raj','Patna','2023-12-01'),
(32,'Payal Verma','Pune','2023-12-10'),
(33,'Rakesh Patel','Ahmedabad','2023-12-15'),
(34,'Gaurav Sharma','Delhi','2023-12-20'),
(35,'Ayesha Khan','Hyderabad','2024-01-05'),
(36,'Mohit Saxena','Bhopal','2024-01-15'),
(37,'Pallavi Gupta','Indore','2024-01-22'),
(38,'Ravi Kumar','Patna','2024-02-01'),
(39,'Kavita Sharma','Delhi','2024-02-10'),
(40,'Sunil Yadav','Lucknow','2024-02-20'),
(41,'Arti Jain','Jaipur','2024-03-01'),
(42,'Vivek Sharma','Delhi','2024-03-10'),
(43,'Rohini Patel','Ahmedabad','2024-03-15'),
(44,'Kunal Singh','Kanpur','2024-03-18'),
(45,'Sakshi Gupta','Indore','2024-03-20'),
(46,'Naveen Kumar','Patna','2024-03-25'),
(47,'Tanya Kapoor','Mumbai','2024-04-01'),
(48,'Harsh Mehta','Ahmedabad','2024-04-10'),
(49,'Vikas Sharma','Delhi','2024-04-15'),
(50,'Ankit Verma','Lucknow','2024-04-20');
Create table products(
product_id int primary key ,
product_name varchar(30),
category varchar(30),
price int);
INSERT INTO Products VALUES
(1,'Laptop','Electronics',70000),
(2,'Smartphone','Electronics',30000),
(3,'Headphones','Electronics',2000),
(4,'Keyboard','Electronics',1500),
(5,'Mouse','Electronics',800),
(6,'Monitor','Electronics',12000),
(7,'Tablet','Electronics',25000),
(8,'Printer','Electronics',9000),
(9,'Smartwatch','Electronics',7000),
(10,'Camera','Electronics',45000),
(11,'Shoes','Fashion',2500),
(12,'T-Shirt','Fashion',700),
(13,'Jeans','Fashion',1500),
(14,'Jacket','Fashion',3000),
(15,'Cap','Fashion',400),
(16,'Backpack','Fashion',1200),
(17,'Sunglasses','Fashion',1000),
(18,'Watch','Fashion',3500),
(19,'Belt','Fashion',600),
(20,'Wallet','Fashion',900);
drop table orders;
create table orders(
order_id int primary key,
customer_id int,
order_date Date ,
foreign key(customer_id) References customers(customer_id));
INSERT INTO Orders VALUES
(1,1,'2024-01-10'),
(2,2,'2024-01-12'),
(3,3,'2024-01-15'),
(4,4,'2024-01-18'),
(5,5,'2024-01-20'),
(6,6,'2024-01-25'),
(7,7,'2024-01-30'),
(8,8,'2024-02-01'),
(9,9,'2024-02-05'),
(10,10,'2024-02-08'),
(11,11,'2024-02-10'),
(12,12,'2024-02-15'),
(13,13,'2024-02-18'),
(14,14,'2024-02-20'),
(15,15,'2024-02-25'),
(16,16,'2024-03-01'),
(17,17,'2024-03-03'),
(18,18,'2024-03-05'),
(19,19,'2024-03-07'),
(20,20,'2024-03-10');
create table order_details(
order_detail_id int,
order_id int,
 product_id int,
  quantity int);
  INSERT INTO Order_Details VALUES
(1,1,1,1),
(2,1,3,2),
(3,2,2,1),
(4,3,5,2),
(5,4,4,1),
(6,5,6,1),
(7,6,7,1),
(8,7,8,1),
(9,8,9,1),
(10,9,10,1),
(11,10,11,2),
(12,11,12,3),
(13,12,13,1),
(14,13,14,1),
(15,14,15,2),
(16,15,16,1),
(17,16,17,1),
(18,17,18,1),
(19,18,19,2),
(20,19,20,1);
Create table inventory(
product_id int,
stock_quantity int );
INSERT INTO Inventory VALUES
(1,50),
(2,80),
(3,150),
(4,120),
(5,200),
(6,60),
(7,70),
(8,40),
(9,90),
(10,30),
(11,100),
(12,200),
(13,120),
(14,70),
(15,150),
(16,90),
(17,110),
(18,60),
(19,140),
(20,100);
-- Display all customers in the database.
select * from customers;

-- Find customers who belong to a specific city
select * from customers 
where city = "Indore";

--  List all products along with their categories and prices
select product_id,category , price from products;

-- Display all orders placed in a particular month.
select * from orders
where month(order_date) = 1;

-- Find the total number of orders placed by each customer.
select customer_id,count(order_id) as total_order from orders
group by customer_id;

-- Find total quantity sold for each product.
select product_id,sum(quantity)  as total_quantity from order_details
group by product_id;

-- . Identify the top selling products based on quantity sold.
select product_id,sum(quantity)  as total_quantity from order_details
group by product_id
order by total_quantity desc
limit 1;

-- Find customers who placed more than one order
select customer_id , count(order_id) as total_orders from orders
group by customer_id 
having total_orders > 1;

-- Calculate total revenue generated from each product.
SELECT p.product_id, p.product_name,
SUM(od.quantity * p.price) AS total_revenue
FROM order_details od
JOIN products p
ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

--  Find total revenue generated each month
select month(o.order_date) as month,p.product_id , p.product_name,sum(od.quantity * p.price) as total_revenue
from order_details od
join products p
on od.product_id = p.product_id
join orders o
on o.order_id = od.order_id
group by p.product_id , p.product_name , month(o.order_date);

-- Identify customers who never placed any orders.
select customer_id , name from customers
where customer_id not in  (select customer_id from orders );

-- Find the most recent order placed by each customer.
select customer_id , max(order_date) from orders
group by customer_id;

-- . Find the second highest selling product.
select p.product_id , p.product_name,sum(od.quantity) as total_sales from order_details od
join products p
on od.product_id = p.product_id
group by p.product_id , p.product_name
order by total_sales desc;

-- . Rank products based on total sales using ranking functions.
select p.product_id , p.product_name , sum(od.quantity) as total_sales,
rank() over(order by sum(od.quantity) desc) as rnk
from order_details od
join products p
on od.product_id = p.product_id
group by p.product_id , p.product_name;



