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