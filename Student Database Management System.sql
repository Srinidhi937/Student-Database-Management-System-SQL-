-- 1. Create Database
CREATE DATABASE StudentDB;
USE StudentDB;

-- 2. Create Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(30),
    marks INT,
    grade CHAR(2)
);

-- 3. Insert Sample Data
INSERT INTO Students (name, department, marks, grade) VALUES
('Keerthi', 'ECE', 85, 'A'),
('Ravi', 'CSE', 78, 'B'),
('Ananya', 'IT', 92, 'A'),
('Manoj', 'EEE', 67, 'C'),
('Priya', 'MECH', 74, 'B');

-- 4. Display All Students
SELECT * FROM Students;

-- 5. Find Students with Marks Above 80
SELECT name, department, marks FROM Students WHERE marks > 80;

-- 6. Update a Student’s Marks
UPDATE Students SET marks = 90, grade = 'A' WHERE name = 'Ravi';

-- 7. Delete a Student Record
DELETE FROM Students WHERE name = 'Manoj';

-- 8. Count Total Students
SELECT COUNT(*) AS total_students FROM Students;

-- 9. Average Marks per Department
SELECT department, AVG(marks) AS avg_marks
FROM Students
GROUP BY department;

-- 10. Sort Students by Marks (High to Low)
SELECT * FROM Students ORDER BY marks DESC;
