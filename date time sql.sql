create database date;
use date ;
CREATE TABLE employee_attendance (
    emp_id INT,
    emp_name VARCHAR(50),
    login_time DATETIME,
    salary INT
);
INSERT INTO employee_attendance VALUES
(1, 'Amit',   '2026-02-11 09:10:00', 30000),
(2, 'Vicky',  '2026-02-10 09:20:00', 35000),
(3, 'Ravi',   '2026-02-09 08:50:00', 28000),
(4, 'Neha',   '2026-02-01 09:00:00', 40000),
(5, 'Pooja',  '2026-01-25 09:30:00', 32000),
(6, 'Rahul',  '2026-01-15 10:00:00', 45000),
(7, 'Kiran',  '2025-12-31 08:45:00', 29000),
(8, 'Suresh', '2025-12-20 09:15:00', 31000),
(9, 'Ankit',  '2026-02-11 11:00:00', 36000),
(10,'Sunita', '2026-02-08 09:05:00', 33000);
-- show current datetime
select NOW() as current_datetime ; 
 -- show current date
 select curdate() as curent_date ;
-- show current time
select curtime() as curent_time ;
-- show date 
select emp_id , emp_name , date(login_time) , salary from employee_attendance ;
-- show only year ya month in this
select extract(year from login_time ) from employee_attendance ;
--  we can add days in it
select date_add(login_time , interval 7 day ) from employee_attendance ;
-- we can substract days in ti
select date_sub(login_time , interval 1 day) from employee_attendance ;
 -- for applying coditions
 select datediff('2026-02-08' , login_time) from employee_attendance ;
 -- change formate if we write small w then it will show in numerical and in capital it will show in string
 select date_format(login_time , '%W,%M %D,%Y') from employee_attendance ;
-- add specifc interval 
select adddate(login_time,10) from employee_attendance;
select addtime(login_time,10)from employee_attendance ;


