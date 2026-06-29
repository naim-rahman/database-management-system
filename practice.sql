-- =====================================================
-- SQL PRACTICE FILE
-- Topic: SQL Basics To Advanced
-- Database: Oracle SQL
-- =====================================================

-- =====================================================
-- STEP 1: CREATE TABLE
-- =====================================================

CREATE TABLE Student (
Student_ID NUMBER(5) PRIMARY KEY,
Name VARCHAR2(50) NOT NULL,
Department VARCHAR2(30),
CGPA NUMBER(3,2),
City VARCHAR2(30)
);

-- =====================================================
-- STEP 2: INSERT DATA
-- =====================================================

INSERT INTO Student VALUES (101, 'Naim', 'CSE', 3.85, 'Dhaka');
INSERT INTO Student VALUES (102, 'Rahim', 'EEE', 3.70, 'Khulna');
INSERT INTO Student VALUES (103, 'Karim', 'CSE', 3.95, 'Dhaka');
INSERT INTO Student VALUES (104, 'Jannat', 'BBA', 3.60, 'Rajshahi');
INSERT INTO Student VALUES (105, 'Sumaiya', 'EEE', 3.80, 'Dhaka');

COMMIT;

-- =====================================================
-- STEP 3: VIEW ALL DATA
-- =====================================================

SELECT *
FROM Student;

-- =====================================================
-- STEP 4: SELECT SPECIFIC COLUMNS
-- =====================================================

SELECT Name, Department
FROM Student;

-- =====================================================
-- STEP 5: WHERE CLAUSE
-- =====================================================

SELECT *
FROM Student
WHERE Department = 'CSE';

SELECT *
FROM Student
WHERE CGPA > 3.80;

-- =====================================================
-- STEP 6: COMPARISON OPERATORS
-- =====================================================

SELECT *
FROM Student
WHERE CGPA >= 3.80;

SELECT *
FROM Student
WHERE CGPA <> 3.80;

-- =====================================================
-- STEP 7: LOGICAL OPERATORS
-- =====================================================

SELECT *
FROM Student
WHERE Department = 'CSE'
AND CGPA > 3.80;

SELECT *
FROM Student
WHERE Department = 'CSE'
OR Department = 'EEE';

SELECT *
FROM Student
WHERE NOT Department = 'BBA';

-- =====================================================
-- STEP 8: DISTINCT
-- =====================================================

SELECT DISTINCT Department
FROM Student;

-- =====================================================
-- STEP 9: ORDER BY
-- =====================================================

SELECT *
FROM Student
ORDER BY CGPA;

SELECT *
FROM Student
ORDER BY CGPA DESC;

SELECT *
FROM Student
ORDER BY Name;

-- =====================================================
-- STEP 10: BETWEEN
-- =====================================================

SELECT *
FROM Student
WHERE CGPA BETWEEN 3.70 AND 3.90;

-- =====================================================
-- STEP 11: IN OPERATOR
-- =====================================================

SELECT *
FROM Student
WHERE Department IN ('CSE', 'EEE');

-- =====================================================
-- STEP 12: LIKE OPERATOR
-- =====================================================

SELECT *
FROM Student
WHERE Name LIKE 'N%';

SELECT *
FROM Student
WHERE Name LIKE '%m';

SELECT *
FROM Student
WHERE Name LIKE '%ai%';

-- =====================================================
-- STEP 13: NULL VALUES
-- =====================================================

SELECT *
FROM Student
WHERE City IS NULL;

SELECT *
FROM Student
WHERE City IS NOT NULL;

-- =====================================================
-- STEP 14: COLUMN ALIAS
-- =====================================================

SELECT Name AS Student_Name,
CGPA AS Result
FROM Student;

-- =====================================================
-- STEP 15: AGGREGATE FUNCTIONS
-- =====================================================

SELECT COUNT(*) AS Total_Students
FROM Student;

SELECT MAX(CGPA) AS Highest_CGPA
FROM Student;

SELECT MIN(CGPA) AS Lowest_CGPA
FROM Student;

SELECT AVG(CGPA) AS Average_CGPA
FROM Student;

-- =====================================================
-- STEP 16: REAL-WORLD QUERIES
-- =====================================================

-- Students from Dhaka
SELECT *
FROM Student
WHERE City = 'Dhaka';

-- CSE students with CGPA above 3.80
SELECT Name, CGPA
FROM Student
WHERE Department = 'CSE'
AND CGPA > 3.80;

-- Top students
SELECT *
FROM Student
ORDER BY CGPA DESC
FETCH FIRST 3 ROWS ONLY;
