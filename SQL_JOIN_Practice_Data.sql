
-- DROP TABLES IF EXIST
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

-- CREATE Departments TABLE
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- INSERT INTO Departments
INSERT INTO Departments (DeptID, DeptName) VALUES
(10, 'HR'),
(20, 'Finance'),
(30, 'IT'),
(40, 'Sales'),
(50, 'Marketing'),
(60, 'Support');

-- CREATE Employees TABLE
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT
);

-- INSERT INTO Employees (60 ROWS)
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES
(1,'Employee_1',10),
(2,'Employee_2',20),
(3,'Employee_3',30),
(4,'Employee_4',40),
(5,'Employee_5',50),
(6,'Employee_6',60),
(7,'Employee_7',NULL),
(8,'Employee_8',10),
(9,'Employee_9',20),
(10,'Employee_10',30),
(11,'Employee_11',40),
(12,'Employee_12',50),
(13,'Employee_13',60),
(14,'Employee_14',NULL),
(15,'Employee_15',10),
(16,'Employee_16',20),
(17,'Employee_17',30),
(18,'Employee_18',40),
(19,'Employee_19',50),
(20,'Employee_20',60),
(21,'Employee_21',NULL),
(22,'Employee_22',10),
(23,'Employee_23',20),
(24,'Employee_24',30),
(25,'Employee_25',40),
(26,'Employee_26',50),
(27,'Employee_27',60),
(28,'Employee_28',NULL),
(29,'Employee_29',10),
(30,'Employee_30',20),
(31,'Employee_31',30),
(32,'Employee_32',40),
(33,'Employee_33',50),
(34,'Employee_34',60),
(35,'Employee_35',NULL),
(36,'Employee_36',10),
(37,'Employee_37',20),
(38,'Employee_38',30),
(39,'Employee_39',40),
(40,'Employee_40',50),
(41,'Employee_41',60),
(42,'Employee_42',NULL),
(43,'Employee_43',10),
(44,'Employee_44',20),
(45,'Employee_45',30),
(46,'Employee_46',40),
(47,'Employee_47',50),
(48,'Employee_48',60),
(49,'Employee_49',NULL),
(50,'Employee_50',10),
(51,'Employee_51',20),
(52,'Employee_52',30),
(53,'Employee_53',40),
(54,'Employee_54',50),
(55,'Employee_55',60),
(56,'Employee_56',NULL),
(57,'Employee_57',10),
(58,'Employee_58',20),
(59,'Employee_59',30),
(60,'Employee_60',40);
