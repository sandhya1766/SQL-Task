drop database company;
create database company;
use company;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Dept VARCHAR(30),
    Salary INT,
    ManagerID INT
);
INSERT INTO Employees VALUES
(1, 'Rahul',   'IT',     60000, 5),
(2, 'Amit',    'IT',     55000, 5),
(3, 'Neha',    'HR',     45000, 6),
(4, 'Priya',   'HR',     48000, 6),
(5, 'Suresh',  'IT',     90000, NULL),
(6, 'Ramesh',  'HR',     85000, NULL),
(7, 'Ankit',   'Sales',  40000, 8),
(8, 'Vikas',   'Sales',  70000, NULL),
(9, 'Kiran',   'IT',     52000, 5),
(10,'Pooja',   'Sales',  42000, 8);

-- 1️⃣ Find employees earning more than average salary
select * from employees
where salary > ( select avg(salary) from employees);

-- 2️⃣ Find employees earning highest salary
select * from employees
where salary = (select max(salary) from employees);

-- 3️⃣ Find employees earning lowest salary
select * from employees
where salary = (select min(salary) from employees);

-- 4️⃣ Find employees from IT department earning more than HR average salary
select * from employees
where (dept = "IT") and salary  > (select avg(salary) from employees where dept="HR") ;

-- 5️⃣ Find employees who are managers
select * from employees
where empid in (select managerid from employees);

-- 6️⃣ Find employees who are NOT managers
select * from employees
where empid not in (select managerid from employees);

-- 7️⃣ Find employees earning more than their manager

-- 8️⃣ Find departments where average salary > 50000
select dept ,avg(salary) as AVG_salary 
from employees 
group by dept
having avg(salary)>50000;

-- 9️⃣ Find employees from departments having more than 3 employees
select dept , count(dept) as dep_count
from employees
group by Dept
having count(dept) > 3 ;

-- 🔟 Find employee with 2nd highest salary
select * from employees
order by salary limit 1 offset 1; -- (offset remove karta hai first row)
 -- or 
 select * from employees 
 order by salary 
 where rank()
 




