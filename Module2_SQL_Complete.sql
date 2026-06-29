-- ==========================================
-- Module 2 SQL Practice
-- Sample Tables and Data
-- ==========================================

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Employee;

CREATE TABLE Student(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(50),
    Marks INT,
    City VARCHAR(50),
    Age INT,
    Email VARCHAR(100),
    AdmissionYear INT
);

INSERT INTO Student VALUES
(101,'Arun','CSE',95,'Chennai',20,'arun@gmail.com',2023),
(102,'Bharath','IT',82,'Coimbatore',21,'bharath@yahoo.com',2022),
(103,'Charan','ECE',78,'Madurai',19,'charan@gmail.com',2024),
(104,'Divya','EEE',65,'Salem',22,'divya@yahoo.com',2021),
(105,'Esha','AI',90,'Chennai',20,'esha@gmail.com',2025),
(106,'Farhan','Civil',35,'Trichy',23,NULL,2022),
(107,'Gokul','IT',55,'Erode',18,'gokul@gmail.com',2023),
(108,'Hari','CSE',60,'Chennai',24,NULL,2020),
(109,'Indhu','Data Science',88,'Coimbatore',21,'indhu@gmail.com',2024),
(110,'Jayan','Mechanical',NULL,NULL,17,NULL,2025);

CREATE TABLE Employee(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2),
    Age INT
);

INSERT INTO Employee VALUES
(1,'Ajay',25000,22),
(2,'Bala',30000,25),
(3,'Charles',40000,28),
(4,'David',50000,23),
(5,'Elango',55000,30),
(6,'Farooq',60000,24),
(7,'Ganesh',70000,27),
(8,'Hari',80000,35),
(9,'Imran',100000,40),
(10,'John',NULL,21);

-- ==========================================
-- SELECT Queries
-- ==========================================

-- WHERE
SELECT * FROM Student WHERE Marks>80;
SELECT * FROM Student WHERE Department='CSE';
SELECT * FROM Student WHERE Age<20;
SELECT * FROM Student WHERE City='Chennai';
SELECT * FROM Student WHERE Marks=90;
SELECT * FROM Employee WHERE Salary>50000;
SELECT * FROM Student WHERE Age>18;
SELECT * FROM Student WHERE Department='IT';
SELECT * FROM Student WHERE City='Coimbatore';
SELECT * FROM Student WHERE Marks<40;

-- BETWEEN
SELECT * FROM Student WHERE Marks BETWEEN 70 AND 90;
SELECT * FROM Employee WHERE Salary BETWEEN 30000 AND 60000;
SELECT * FROM Student WHERE Age BETWEEN 18 AND 25;
SELECT * FROM Student WHERE StudentID BETWEEN 101 AND 120;
SELECT * FROM Student WHERE Marks BETWEEN 50 AND 100;
SELECT * FROM Employee WHERE Salary BETWEEN 50000 AND 100000;
SELECT * FROM Student WHERE AdmissionYear BETWEEN 2022 AND 2025;
SELECT * FROM Student WHERE Age BETWEEN 20 AND 22;
SELECT * FROM Student WHERE StudentID BETWEEN 1 AND 50;
SELECT * FROM Student WHERE Marks NOT BETWEEN 40 AND 60;

-- IN / NOT IN
SELECT * FROM Student WHERE Department IN ('CSE','IT','ECE');
SELECT * FROM Student WHERE City IN ('Chennai','Madurai','Salem');
SELECT * FROM Student WHERE Marks IN (60,70,80);
SELECT * FROM Student WHERE Department NOT IN ('CSE');
SELECT * FROM Student WHERE City NOT IN ('Chennai','Coimbatore');
SELECT * FROM Student WHERE StudentID IN (101,105,110);
SELECT * FROM Student WHERE Age NOT IN (18,19,20);
SELECT * FROM Employee WHERE Salary IN (30000,50000,70000);
SELECT * FROM Student WHERE Department NOT IN ('IT','ECE','Civil');
SELECT * FROM Student WHERE City IN ('Chennai','Trichy','Erode');

-- IS NULL / IS NOT NULL
SELECT * FROM Student WHERE Email IS NULL;
SELECT * FROM Employee WHERE Salary IS NULL;
SELECT * FROM Student WHERE Marks IS NULL;
SELECT * FROM Student WHERE City IS NULL;
SELECT * FROM Student WHERE Department IS NULL;
SELECT * FROM Student WHERE Email IS NOT NULL;
SELECT * FROM Employee WHERE Salary IS NOT NULL;
SELECT * FROM Student WHERE Marks IS NOT NULL;
SELECT * FROM Student WHERE City IS NOT NULL;
SELECT * FROM Student WHERE Department IS NOT NULL;

-- DISTINCT
SELECT DISTINCT Department FROM Student;
SELECT DISTINCT City FROM Student;
SELECT DISTINCT Age FROM Student;
SELECT DISTINCT Marks FROM Student;
SELECT DISTINCT Salary FROM Employee;
SELECT DISTINCT Department, City FROM Student;
SELECT DISTINCT StudentName FROM Student;
SELECT DISTINCT SUBSTRING_INDEX(Email,'@',-1) AS Domain FROM Student;
SELECT DISTINCT Marks FROM Student WHERE Marks>50;
SELECT DISTINCT Department FROM Student;

-- LIKE
SELECT * FROM Student WHERE StudentName LIKE 'A%';
SELECT * FROM Student WHERE StudentName LIKE '%n';
SELECT * FROM Student WHERE StudentName LIKE '%ar%';
SELECT * FROM Student WHERE StudentName LIKE 'S%';
SELECT * FROM Student WHERE StudentName LIKE '%a';
SELECT * FROM Student WHERE City LIKE 'C%';
SELECT * FROM Student WHERE Department LIKE '%IT%';
SELECT * FROM Student WHERE StudentName LIKE '%m%';
SELECT * FROM Student WHERE City LIKE '%i';
SELECT * FROM Student WHERE Email LIKE 'a%';

-- WILDCARDS
SELECT * FROM Student WHERE StudentName LIKE 'R%';
SELECT * FROM Student WHERE StudentName LIKE '%h';
SELECT * FROM Student WHERE StudentName LIKE '%an%';
SELECT * FROM Student WHERE StudentName LIKE '_a%';
SELECT * FROM Student WHERE StudentName LIKE '_____';
SELECT * FROM Student WHERE City LIKE 'M%';
SELECT * FROM Student WHERE City LIKE '%e';
SELECT * FROM Student WHERE Department LIKE '%Data%';
SELECT * FROM Student WHERE StudentName LIKE '__i%';
SELECT * FROM Student WHERE Email LIKE '%.com';

-- LOGICAL OPERATORS
SELECT * FROM Student WHERE Marks>80 AND Department='CSE';
SELECT * FROM Student WHERE City='Chennai' OR City='Coimbatore';
SELECT * FROM Student WHERE Age>18 AND Marks>75;
SELECT * FROM Student WHERE Department='IT' OR Department='ECE';
SELECT * FROM Student WHERE Marks>=50;
SELECT * FROM Student WHERE City='Chennai' AND Department='AI';
SELECT * FROM Employee WHERE Salary>50000 OR Age<25;
SELECT * FROM Student WHERE Marks BETWEEN 70 AND 90 AND City='Chennai';
SELECT * FROM Student WHERE Department<>'CSE';
SELECT * FROM Student WHERE Age>18 OR Marks>90;

-- ORDER BY
SELECT * FROM Student ORDER BY StudentName ASC;
SELECT * FROM Student ORDER BY Marks DESC;
SELECT * FROM Student ORDER BY Age ASC;
SELECT * FROM Employee ORDER BY Salary DESC;
SELECT * FROM Student ORDER BY City ASC;
SELECT * FROM Student ORDER BY Department, Marks;
SELECT * FROM Student ORDER BY Age DESC;
SELECT * FROM Student ORDER BY Marks ASC;
SELECT * FROM Student ORDER BY City, StudentName;
SELECT * FROM Employee ORDER BY Salary, EmpName;

-- ALIAS
SELECT StudentName AS Name FROM Student;
SELECT Marks AS TotalMarks FROM Student;
SELECT Salary AS MonthlySalary FROM Employee;
SELECT Department AS Dept FROM Student;
SELECT City AS StudentCity FROM Student;
SELECT * FROM Student AS S;
SELECT StudentName AS Name, Marks AS Score FROM Student;
SELECT Department AS Dept, City AS Place FROM Student;
SELECT Salary AS Income FROM Employee;
SELECT StudentID AS RollNumber, StudentName AS FullName FROM Student;
