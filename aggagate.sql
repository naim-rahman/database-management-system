-- ==========================================
-- TABLE 1 : Student
-- ==========================================

CREATE TABLE Student (
    Student_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50),
    Department VARCHAR2(30),
    CGPA NUMBER(3,2),
    City VARCHAR2(30)
);

INSERT INTO Student VALUES (101, 'Naim', 'CSE', 3.85, 'Dhaka');
INSERT INTO Student VALUES (102, 'Rahim', 'EEE', 3.70, 'Khulna');
INSERT INTO Student VALUES (103, 'Karim', 'CSE', 3.95, 'Dhaka');
INSERT INTO Student VALUES (104, 'Jannat', 'BBA', 3.60, 'Rajshahi');
INSERT INTO Student VALUES (105, 'Sumaiya', 'EEE', 3.80, 'Dhaka');
INSERT INTO Student VALUES (106, 'Tanvir', 'CSE', 3.75, 'Chattogram');

COMMIT;


-- ==========================================
-- TABLE 2 : Employee
-- ==========================================

CREATE TABLE Employee (
    Emp_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER(8,2)
);

INSERT INTO Employee VALUES (201, 'Arif', 'IT', 50000);
INSERT INTO Employee VALUES (202, 'Sakib', 'HR', 45000);
INSERT INTO Employee VALUES (203, 'Mim', 'IT', 60000);
INSERT INTO Employee VALUES (204, 'Nusrat', 'Finance', 55000);
INSERT INTO Employee VALUES (205, 'Rafi', 'HR', 48000);
INSERT INTO Employee VALUES (206, 'Tania', 'IT', 70000);

COMMIT;

-- =====================================================
-- PRACTICE QUERIES
-- =====================================================

-- Q1. Total number of students.
SELECT COUNT(*) AS Total_Students
FROM Student;

-- Answer: 6


-- Q2. Find the average CGPA.
SELECT AVG(CGPA) AS Average_CGPA
FROM Student;

-- Answer: 3.775


-- Q3. Find the highest and lowest CGPA.
SELECT MAX(CGPA) AS Highest_CGPA,
       MIN(CGPA) AS Lowest_CGPA
FROM Student;

-- Answer:
-- Highest_CGPA = 3.95
-- Lowest_CGPA  = 3.60


-- Q4. Count students in each department.
SELECT Department,
       COUNT(*) AS Total_Students
FROM Student
GROUP BY Department;

-- Answer:
-- CSE = 3
-- EEE = 2
-- BBA = 1


-- Q5. Find departments having average CGPA greater than 3.80.
SELECT Department,
       AVG(CGPA) AS Average_CGPA
FROM Student
GROUP BY Department
HAVING AVG(CGPA) > 3.80;

-- Answer:
-- CSE = 3.85


-- Q6. Find the total salary expense.
SELECT SUM(Salary) AS Total_Salary
FROM Employee;

-- Answer: 328000


-- Q7. Find the average salary in each department.
SELECT Department,
       AVG(Salary) AS Average_Salary
FROM Employee
GROUP BY Department;

-- Answer:
-- IT      = 60000
-- HR      = 46500
-- Finance = 55000


-- Q8. Find the highest-paid employee.
SELECT *
FROM Employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employee
);

-- Answer:
-- Emp_ID: 206
-- Name  : Tania
-- Salary: 70000


-- Q9. Find departments whose total salary is greater than 100000.
SELECT Department,
       SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Department
HAVING SUM(Salary) > 100000;

-- Answer:
-- IT = 180000


-- Q10. Count students whose CGPA is above the overall average.
SELECT COUNT(*)
FROM Student
WHERE CGPA >
(
    SELECT AVG(CGPA)
    FROM Student
);

-- Answer: 3 students
-- (Naim, Karim, Sumaiya)