CREATE DATABASE School;
USE School;
CREATE TABLE STUDENT (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    Grade CHAR(10)
);
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES
(1, 'John Doe', 85, 'A'),
(2, 'Jane Smith', 78, 'B'),
(3, 'Alice Brown', 90, 'A'),
(4, 'Bob White', 65, 'C');

SELECT * FROM STUDENT;

ALTER TABLE STUDENT
ADD Contact VARCHAR(15);

DESC Student;
ALTER TABLE STUDENT
DROP COLUMN Grade;
ALTER TABLE STUDENT
RENAME TO CLASSTEN;
TRUNCATE TABLE CLASSTEN;
DROP TABLE CLASSTEN;