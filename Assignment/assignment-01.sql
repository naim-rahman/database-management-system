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


-- Q9. Display the names of students with the names of
--     their departments.
-- =====================================================

SELECT s.student_name,
       d.department_name
FROM Student s
INNER JOIN Department d
ON s.department_id = d.department_id;


-- Q10. Display the names of teachers with the names of
--      their departments.
-- =====================================================

SELECT t.teacher_name,
       d.department_name
FROM Teacher t
INNER JOIN Department d
ON t.department_id = d.department_id;


-- Q11. Display every course name with the name of the
--      department that offers it.
-- =====================================================

SELECT c.course_name,
       d.department_name
FROM Course c
INNER JOIN Department d
ON c.department_id = d.department_id;


-- Q12. Display student names with the course IDs they
--      are enrolled in.
-- =====================================================

SELECT s.student_name,
       e.course_id
FROM Student s
INNER JOIN Enrollment e
ON s.student_id = e.student_id;


-- Q13. Display student names, course names,
--      semesters, and marks together.
-- =====================================================

SELECT s.student_name,
       c.course_name,
       e.semester,
       e.marks
FROM Student s
INNER JOIN Enrollment e
ON s.student_id = e.student_id
INNER JOIN Course c
ON e.course_id = c.course_id;


-- Q14. Display each student name with any payment
--      amount and payment date available for that
--      student. Students with no payment record
--      should still appear.
-- =====================================================

SELECT s.student_name,
       p.amount,
       p.payment_date
FROM Student s
LEFT JOIN Payment p
ON s.student_id = p.student_id;


-- Q15. Display every department with its teacher names,
--      including departments that currently have
--      no teacher listed.
-- =====================================================

SELECT d.department_name,
       t.teacher_name
FROM Department d
LEFT JOIN Teacher t
ON d.department_id = t.department_id;


-- Q16. Display every teacher with the related
--      department name, including teachers who are
--      not assigned to any department.
-- =====================================================

SELECT t.teacher_name,
       d.department_name
FROM Teacher t
LEFT JOIN Department d
ON t.department_id = d.department_id;


-- Q17. Display every teacher and every department
--      in one result, so that unmatched teachers
--      and unmatched departments are also visible.
-- =====================================================

SELECT t.teacher_name,
       d.department_name
FROM Teacher t
FULL OUTER JOIN Department d
ON t.department_id = d.department_id;


-- Q18. Display every course with its enrollment
--      information, including courses that have
--      no enrollment record.
-- =====================================================

SELECT c.course_name,
       e.enrollment_id,
       e.student_id,
       e.semester,
       e.marks
FROM Course c
LEFT JOIN Enrollment e
ON c.course_id = e.course_id;


-- Q19. Find the total number of students.
-- =====================================================

SELECT COUNT(*) AS Total_Students
FROM Student;


-- Q20. Find the average age of all students.
-- =====================================================

SELECT AVG(age) AS Average_Age
FROM Student;


-- Q21. Find the highest marks recorded
--      in the Enrollment table.
-- =====================================================

SELECT MAX(marks) AS Highest_Marks
FROM Enrollment;


-- Q22. Find the lowest salary recorded
--      in the Teacher table.
-- =====================================================

SELECT MIN(salary) AS Lowest_Salary
FROM Teacher;


-- Q23. Find the total amount collected
--      in the Payment table.
-- =====================================================

SELECT SUM(amount) AS Total_Amount
FROM Payment;


-- Q24. Find how many different cities
--      are listed in the Student table.
-- =====================================================

SELECT COUNT(DISTINCT city) AS Total_Cities
FROM Student;


-- Q25. Prepare one combined city list from
--      Student and Teacher where repeated
--      city names appear only once.
-- =====================================================

SELECT city
FROM Student

UNION

SELECT city
FROM Teacher;


-- Q26. Prepare one combined city list from
--      Student and Teacher where repeated
--      city names are also shown.
-- =====================================================

SELECT city
FROM Student

UNION ALL

SELECT city
FROM Teacher;


-- Q27. Find the city names that appear in both
--      Student and Teacher city lists.
-- =====================================================

SELECT city
FROM Student

INTERSECT

SELECT city
FROM Teacher;


-- Q28. Find the city names that appear in the
--      Student table but do not appear in
--      the Teacher table.
-- =====================================================

SELECT city
FROM Student

MINUS

SELECT city
FROM Teacher;

-- Q29. Add a new column named email to the
--      Student table that can store email addresses.
-- =====================================================

ALTER TABLE Student
ADD email VARCHAR2(100);


-- Q30. Change the Student table so that the
--      city column can store longer city names.
-- =====================================================

ALTER TABLE Student
MODIFY city VARCHAR2(50);


-- Q31. Change the column name student_name
--      in the Student table to full_name.
-- =====================================================

ALTER TABLE Student
RENAME COLUMN student_name TO full_name;


-- Q32. Change the table name Teacher to Faculty.
-- =====================================================

ALTER TABLE Teacher
RENAME TO Faculty;