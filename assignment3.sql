CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE CHECK (DOB <= '2006-12-31' AND DOB >= '1958-01-01'),            
    Age INT ,     
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    Gender VARCHAR(10),
    Department VARCHAR(30) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL         
);
-- Q1
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
    (1, 'John', 'Doe', '1985-05-20', 38, 'Male', 'IT', 30000),
    (2, 'Emma', 'Smith', '1990-03-15', 33, 'Female', 'Finance', 28000),
    (3, 'Michael', 'Brown', '1982-10-25', 41, 'Male', 'IT', 35000),
    (4, 'Aaliya', 'Patel', '1987-07-10', 36, 'Female', 'HR', 25000),
    (5, 'Sophia', 'Johnson', '1992-01-05', 32, 'Female', 'Marketing', 27000),
    (6, 'Liam', 'Davis', '1979-09-18', 45, 'Male', 'IT', 26000),
    (7, 'Isabella', 'Garcia', '1986-06-22', 37, 'Female', 'Finance', 32000),
    (8, 'Noah', 'Martinez', '1984-11-30', 39, 'Male', 'Sales', 24000),
    (9, 'Oliver', 'Wilson', '1988-08-19', 35, 'Male', 'HR', 22000),
    (10, 'Mia', 'Anderson', '1993-02-12', 31, 'Female', 'IT', 30000);

-- Q2
SELECT First_Name, Last_Name, DOB FROM Managers WHERE Manager_Id = 1;

-- Q3
SELECT CONCAT (First_Name,' ',Last_Name) AS Name, Salary * 12 AS Annual_Income FROM Managers;

-- Q4
SELECT * FROM Managers WHERE First_Name <> 'Aaliya';

-- Q5
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

-- Q6
SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;