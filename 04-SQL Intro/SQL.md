# SQL Basics

## What is SQL?

**SQL (Structured Query Language)** is the standard language used to communicate with relational databases. It is used to create, store, retrieve, update, and manage data in a database.

SQL works with relational database management systems (RDBMS) such as:

* Oracle Database
* MySQL
* PostgreSQL
* Microsoft SQL Server
* SQLite

---

# Why Do We Need SQL?

SQL helps us to:

* Create databases and tables.
* Store and manage data efficiently.
* Retrieve specific information from databases.
* Update and delete records.
* Control access to data.
* Maintain data integrity.

---

# Categories of SQL Commands

SQL commands are mainly divided into five categories.

## 1. DDL (Data Definition Language)

DDL commands are used to define and modify database structures.

### Commands

* CREATE
* ALTER
* DROP
* TRUNCATE
* RENAME

### Example

```sql
CREATE TABLE Student (
    Student_ID NUMBER,
    Name VARCHAR2(50),
    Department VARCHAR2(30)
);
```

---

## 2. DML (Data Manipulation Language)

DML commands are used to insert, update, and delete data.

### Commands

* INSERT
* UPDATE
* DELETE

### Example

```sql
INSERT INTO Student
VALUES (101, 'Naim', 'CSE');
```

---

## 3. DQL (Data Query Language)

DQL commands are used to retrieve data from a database.

### Command

* SELECT

### Example

```sql
SELECT *
FROM Student;
```

---

## 4. DCL (Data Control Language)

DCL commands are used to control user permissions and access.

### Commands

* GRANT
* REVOKE

### Example

```sql
GRANT SELECT
ON Student
TO user1;
```

---

## 5. TCL (Transaction Control Language)

TCL commands are used to manage database transactions.

### Commands

* COMMIT
* ROLLBACK
* SAVEPOINT

### Example

```sql
COMMIT;
```

---

# Basic SQL Syntax

## Create a Table

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Name VARCHAR2(50),
    Department VARCHAR2(30),
    CGPA NUMBER(3,2)
);
```

---

## Insert Data

```sql
INSERT INTO Student
VALUES (101, 'Naim', 'CSE', 3.85);

INSERT INTO Student
VALUES (102, 'Rahim', 'EEE', 3.70);

INSERT INTO Student
VALUES (103, 'Karim', 'BBA', 3.90);
```

---

## Student Table

| Student_ID | Name  | Department | CGPA |
| ---------- | ----- | ---------- | ---- |
| 101        | Naim  | CSE        | 3.85 |
| 102        | Rahim | EEE        | 3.70 |
| 103        | Karim | BBA        | 3.90 |

---

## Retrieve All Records

```sql
SELECT *
FROM Student;
```

---

## Retrieve Specific Columns

```sql
SELECT Name, Department
FROM Student;
```

---

## Filter Data Using WHERE

```sql
SELECT *
FROM Student
WHERE Department = 'CSE';
```

---

## Sort Data

```sql
SELECT *
FROM Student
ORDER BY CGPA DESC;
```

---

## Count Records

```sql
SELECT COUNT(*)
FROM Student;
```

---

# SQL Statement Processing Order

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

---

# Advantages of SQL

* Easy to learn and use.
* Supports powerful data retrieval.
* Standard language for relational databases.
* Efficient data management.
* Supports security and access control.
* Works with large amounts of data.

---

# Key Takeaway

SQL is the foundation of relational databases. Learning SQL basics is essential because almost every database operation—creating tables, storing data, retrieving information, and managing records—is performed using SQL.
