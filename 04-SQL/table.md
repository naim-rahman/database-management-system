# CREATE TABLE Statement

## What is CREATE TABLE?

The `CREATE TABLE` statement is used to create a new table in a database. A table consists of rows and columns, where each column has a name, a data type, and optional constraints.

---

# Basic Syntax

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype
);
```

---

# Example 1: Creating a Simple Student Table

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Name VARCHAR2(50),
    Department VARCHAR2(30),
    CGPA NUMBER(3,2)
);
```

## Table Structure

| Column     | Data Type    | Description            |
| ---------- | ------------ | ---------------------- |
| Student_ID | NUMBER(5)    | Stores student ID      |
| Name       | VARCHAR2(50) | Stores student name    |
| Department | VARCHAR2(30) | Stores department name |
| CGPA       | NUMBER(3,2)  | Stores student's CGPA  |

---

# Example 2: Student Table with Constraints

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Department VARCHAR2(30),
    CGPA NUMBER(3,2) CHECK (CGPA BETWEEN 0 AND 4)
);
```

## Explanation

| Constraint  | Purpose                          |
| ----------- | -------------------------------- |
| PRIMARY KEY | Uniquely identifies each student |
| NOT NULL    | Name cannot be empty             |
| UNIQUE      | Email cannot be duplicated       |
| CHECK       | CGPA must be between 0 and 4     |

---

# Example 3: Creating a Department Table

```sql
CREATE TABLE Department (
    Dept_ID NUMBER(3) PRIMARY KEY,
    Dept_Name VARCHAR2(30) NOT NULL
);
```

## Department Table

| Dept_ID | Dept_Name |
| ------- | --------- |
| 1       | CSE       |
| 2       | EEE       |
| 3       | BBA       |

---

# Example 4: Student Table with Foreign Key

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Dept_ID NUMBER(3),
    FOREIGN KEY (Dept_ID)
        REFERENCES Department(Dept_ID)
);
```

## Student Table

| Student_ID | Name  | Dept_ID |
| ---------- | ----- | ------- |
| 101        | Naim  | 1       |
| 102        | Rahim | 2       |
| 103        | Karim | 1       |

Here, `Dept_ID` in the `Student` table references the `Department` table.

---

# Example 5: Creating an Employee Table

```sql
CREATE TABLE Employee (
    Emp_ID NUMBER(5) PRIMARY KEY,
    Emp_Name VARCHAR2(50) NOT NULL,
    Job_Title VARCHAR2(30),
    Salary NUMBER(8,2),
    Hire_Date DATE
);
```

## Employee Table

| Emp_ID | Emp_Name | Job_Title | Salary   | Hire_Date   |
| ------ | -------- | --------- | -------- | ----------- |
| 101    | Naim     | Developer | 50000.00 | 15-JAN-2026 |
| 102    | Rahim    | Manager   | 65000.00 | 01-MAR-2025 |

---

# Example 6: Creating a Course Table

```sql
CREATE TABLE Course (
    Course_ID VARCHAR2(10) PRIMARY KEY,
    Course_Name VARCHAR2(100) NOT NULL,
    Credit NUMBER(2,1),
    Semester VARCHAR2(20)
);
```

## Course Table

| Course_ID | Course_Name                | Credit | Semester |
| --------- | -------------------------- | ------ | -------- |
| CSE221    | Database Management System | 3.0    | Spring   |
| CSE222    | Data Structures            | 3.0    | Fall     |

---

# Creating Multiple Related Tables

```sql
CREATE TABLE Department (
    Dept_ID NUMBER(3) PRIMARY KEY,
    Dept_Name VARCHAR2(30)
);

CREATE TABLE Student (
    Student_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50),
    Dept_ID NUMBER(3),
    FOREIGN KEY (Dept_ID)
        REFERENCES Department(Dept_ID)
);
```

---

# Rules for Creating Tables

* Use meaningful table names.
* Use meaningful column names.
* Choose appropriate data types.
* Define a Primary Key whenever possible.
* Use constraints to maintain data integrity.

---

# Common Errors

## Missing Data Type

❌ Incorrect

```sql
CREATE TABLE Student (
    Student_ID,
    Name VARCHAR2(50)
);
```

✅ Correct

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Name VARCHAR2(50)
);
```

---

## Missing Comma

❌ Incorrect

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5)
    Name VARCHAR2(50)
);
```

✅ Correct

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Name VARCHAR2(50)
);
```

---

## Duplicate Table Name

❌ Incorrect

```sql
CREATE TABLE Student (...);
CREATE TABLE Student (...);
```

A table name must be unique within a database schema.

---

# Advantages of Proper Table Design

* Improves data organization.
* Reduces redundancy.
* Maintains data integrity.
* Improves query performance.
* Makes the database easier to manage.

---

