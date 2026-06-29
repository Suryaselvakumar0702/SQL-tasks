

CREATE TABLE Student(
StudentID INT,
StudentName VARCHAR(100),
Department VARCHAR(50),
Marks INT,
City VARCHAR(50),
Age INT,
Gender CHAR(1)
);
CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE Employee(EmpID INT PRIMARY KEY,EmpName VARCHAR(100),Salary DECIMAL(10,2));
CREATE TABLE Department(DeptID INT PRIMARY KEY,DeptName VARCHAR(100));
CREATE TABLE Course(CourseID INT PRIMARY KEY,CourseName VARCHAR(100),Duration VARCHAR(50));
CREATE TABLE Product(ProductID INT PRIMARY KEY,ProductName VARCHAR(100),Price DECIMAL(10,2));
CREATE TABLE Customer(CustomerID INT PRIMARY KEY,CustomerName VARCHAR(100),MobileNumber VARCHAR(15));
CREATE TABLE Books(BookID INT PRIMARY KEY,Title VARCHAR(100),Author VARCHAR(100));
CREATE TABLE Library(LibraryID INT PRIMARY KEY,Location VARCHAR(100));
CREATE TABLE Orders(OrderID INT PRIMARY KEY,OrderDate DATE,Amount DECIMAL(10,2));
CREATE TABLE Faculty(FacultyID INT PRIMARY KEY,FacultyName VARCHAR(100),Department VARCHAR(100));
INSERT INTO Student VALUES(101,'Surya','IT',95,'Chennai',21,'M');
INSERT INTO Student VALUES(102,'Ram','CSE',85,'Salem',20,'M');
INSERT INTO Student VALUES(103,'Priya','IT',90,'Madurai',20,'F');
INSERT INTO Student VALUES
(104,'Arun','ECE',88,'Trichy',21,'M'),
(105,'Divya','EEE',76,'Chennai',20,'F'),
(106,'Kumar','IT',91,'Coimbatore',22,'M');
INSERT INTO Student(StudentID,StudentName) VALUES(107,'Ajay');
INSERT INTO Student(StudentID,StudentName,Department) VALUES
(108,'A','IT'),(109,'B','IT'),(110,'C','IT'),(111,'D','IT'),(112,'E','IT');
INSERT INTO Student(StudentID,StudentName,City) VALUES(113,'John','Chennai');
INSERT INTO Student(StudentID,StudentName,Marks) VALUES(114,'Meena',NULL);
INSERT INTO Student SELECT * FROM Student_Backup;
INSERT INTO Employee VALUES
(1,'A',25000),(2,'B',30000),(3,'C',28000),(4,'D',40000),(5,'E',35000),(6,'F',26000),(7,'G',29000),(8,'H',45000),(9,'I',50000),(10,'J',55000);
UPDATE Student SET Marks=95 WHERE StudentID=101;
UPDATE Student SET Department='AI' WHERE StudentName='Ram';
UPDATE Student SET Marks=Marks+5;
UPDATE Student SET City='Chennai' WHERE StudentID=105;
UPDATE Student SET Department='CSE' WHERE Department='IT';
UPDATE Student SET Age=Age+1;
UPDATE Student SET Marks=100 WHERE Marks>95;
UPDATE Student SET StudentName='Arun Kumar' WHERE StudentName='Kumar';
UPDATE Student SET City='Chennai',Department='IT' WHERE StudentID=110;
UPDATE Student SET Marks=50 WHERE Marks IS NULL;
DELETE FROM Student WHERE StudentID=101;
DELETE FROM Student WHERE Department='EEE';
DELETE FROM Student WHERE Marks<40;
DELETE FROM Student WHERE City='Chennai';
DELETE FROM Student WHERE Age>25;
DELETE FROM Student WHERE Department='Civil';
DELETE FROM Student WHERE Marks IS NULL;
DELETE FROM Student WHERE StudentName='Ram';
DELETE FROM Student;
DELETE FROM Student WHERE Age<18;
DROP TABLE Student;
DROP TABLE Employee;
DROP TABLE Department;
DROP TABLE Course;
DROP TABLE Product;
DROP TABLE Customer;
DROP TABLE Books;
DROP TABLE Orders;
DROP TABLE Faculty;
DROP DATABASE CollegeDB;
ALTER TABLE Student ADD Email VARCHAR(100);
ALTER TABLE Student ADD MobileNumber VARCHAR(15);
ALTER TABLE Student MODIFY StudentName VARCHAR(100);
ALTER TABLE Student MODIFY Marks DECIMAL(5,2);
ALTER TABLE Student RENAME COLUMN City TO Location;
ALTER TABLE Student DROP COLUMN Gender;
ALTER TABLE Student ADD CONSTRAINT UQ_Email UNIQUE(Email);
ALTER TABLE Student ADD DateOfBirth DATE;
ALTER TABLE Student RENAME TO StudentMaster;
ALTER TABLE Student ADD PRIMARY KEY(StudentID);
CREATE DATABASE UniversityDB;
CREATE DATABASE TrainingDB;
SHOW DATABASES;
USE CollegeDB;
DROP DATABASE UniversityDB;
CREATE DATABASE EmployeeDB;
CREATE DATABASE ProjectDB;
USE ProjectDB;
SELECT DATABASE();
DROP DATABASE TrainingDB;
CREATE TABLE Student(StudentID INT,StudentName VARCHAR(100),Department VARCHAR(50),Marks INT,City VARCHAR(50));
CREATE TABLE Employee(EmpID INT PRIMARY KEY,EmpName VARCHAR(100),Salary DECIMAL(10,2));
CREATE TABLE Product(ProductID INT PRIMARY KEY,ProductName VARCHAR(100),Price DECIMAL(10,2));
DESC Student;
SHOW TABLES;
ALTER TABLE Employee RENAME TO EmployeeMaster;
CREATE TABLE Faculty(FacultyID INT PRIMARY KEY,FacultyName VARCHAR(100),Department VARCHAR(100));
CREATE TABLE Course(CourseID INT PRIMARY KEY,CourseName VARCHAR(100),Duration VARCHAR(50));
DROP TABLE Faculty;
DESC Product;
CREATE TABLE TestInt(ID INT);
CREATE TABLE TestVarchar(Name VARCHAR(100));
CREATE TABLE TestDate(DOB DATE);
CREATE TABLE TestDecimal(Salary DECIMAL(10,2));
CREATE TABLE TestFloat(Weight FLOAT);
CREATE TABLE TestChar(Gender CHAR(1));
CREATE TABLE TestDateTime(LoginTime DATETIME);
CREATE TABLE TestText(Description TEXT);
CREATE TABLE AllTypes(ID INT,Name VARCHAR(100),Gender CHAR(1),DOB DATE,Salary DECIMAL(10,2),Weight FLOAT,Description TEXT,CreatedAt DATETIME);
CREATE TABLE Student(StudentID INT PRIMARY KEY,StudentName VARCHAR(100),Department VARCHAR(50),Marks INT,City VARCHAR(50),Age INT);
TRUNCATE TABLE Student;
TRUNCATE TABLE Employee;
TRUNCATE TABLE Product;
TRUNCATE TABLE Department;
TRUNCATE TABLE Faculty;
TRUNCATE TABLE Orders;
TRUNCATE TABLE Customer;
TRUNCATE TABLE Books;
TRUNCATE TABLE Course;
TRUNCATE TABLE Student;
