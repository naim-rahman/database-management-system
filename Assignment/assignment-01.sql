-- 1. Department Table
-- ==========================================

CREATE TABLE Department (
    department_id NUMBER(3) PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL,
    building VARCHAR2(20)
);

-- 2. Student Table
-- ==========================================

CREATE TABLE Student (
    student_id NUMBER(3) PRIMARY KEY,
    student_name VARCHAR2(50) NOT NULL,
    department_id NUMBER(3),
    city VARCHAR2(30),
    age NUMBER(2),
    admission_year NUMBER(4),
    CONSTRAINT student_fk
        FOREIGN KEY (department_id)
        REFERENCES Department(department_id)
);

-- 3. Course Table
-- ==========================================

CREATE TABLE Course (
    course_id NUMBER(3) PRIMARY KEY,
    course_name VARCHAR2(50) NOT NULL,
    credit NUMBER(2),
    department_id NUMBER(3),
    CONSTRAINT course_fk
        FOREIGN KEY (department_id)
        REFERENCES Department(department_id)
);

-- 4. Enrollment Table
-- ==========================================

CREATE TABLE Enrollment (
    enrollment_id NUMBER(3) PRIMARY KEY,
    student_id NUMBER(3),
    course_id NUMBER(3),
    semester VARCHAR2(20),
    marks NUMBER(3),
    CONSTRAINT enrollment_student_fk
        FOREIGN KEY (student_id)
        REFERENCES Student(student_id),
    CONSTRAINT enrollment_course_fk
        FOREIGN KEY (course_id)
        REFERENCES Course(course_id)
);

-- 5. Teacher Table
-- ==========================================

CREATE TABLE Teacher (
    teacher_id NUMBER(3) PRIMARY KEY,
    teacher_name VARCHAR2(50) NOT NULL,
    department_id NUMBER(3),
    city VARCHAR2(30),
    salary NUMBER(8,2),
    CONSTRAINT teacher_fk
        FOREIGN KEY (department_id)
        REFERENCES Department(department_id)
);

-- 6. Payment Table
-- ==========================================

CREATE TABLE Payment (
    payment_id NUMBER PRIMARY KEY,
    student_id NUMBER(3),
    amount NUMBER(8,2),
    payment_date DATE,
    CONSTRAINT payment_fk
        FOREIGN KEY (student_id)
        REFERENCES Student(student_id)
);





-- Assignments qus for SQL Queries.
--Part 1: Questions 1–8 (Basic SELECT and WHERE)

-- Q1. Display all information stored in the Student table.
-- =====================================================

SELECT *
FROM Student;

-- Q2. Display only the student names, cities, and ages.
-- =====================================================

SELECT student_name,
       city,
       age
FROM Student;

-- Q3. Find all students who live in Dhaka.
-- =====================================================

SELECT *
FROM Student
WHERE city = 'Dhaka';

-- Q4. Find all students whose age is more than 21.
-- =====================================================

SELECT *
FROM Student
WHERE age > 21;

-- Q5. Find all students who were admitted in 2023 or later.
-- =====================================================

SELECT *
FROM Student
WHERE admission_year >= 2023;

-- Q6. Find all courses that carry more than 3 credits.
-- =====================================================

SELECT *
FROM Course
WHERE credit > 3;

-- Q7. Find all enrollment records where marks are greater than 80.
-- =====================================================

SELECT *
FROM Enrollment
WHERE marks > 80;

-- Q8. Find all students who live in either Dhaka or Sylhet.
-- =====================================================

SELECT *
FROM Student
WHERE city IN ('Dhaka', 'Sylhet');

