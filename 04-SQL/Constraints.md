# SQL Constraints

## What are Constraints?

Constraints are rules applied to table columns to ensure the accuracy, consistency, and integrity of data.

Constraints prevent invalid data from being inserted into a table.

---

# Types of SQL Constraints

1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. FOREIGN KEY
5. CHECK
6. DEFAULT

---

# 1. NOT NULL Constraint

The `NOT NULL` A constraint ensures that a column cannot contain NULL values.

## Example

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Name VARCHAR2(50) NOT NULL
);
```

Valid:

```text
Name = 'Naim'
```

Invalid:

```text
Name = NULL
```

---

# 2. UNIQUE Constraint

The `UNIQUE` constraint ensures that all values in a column are different.

## Example

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Email VARCHAR2(100) UNIQUE
);
```

Valid:

```text
naim@gmail.com
rahim@gmail.com
```

Invalid:

```text
naim@gmail.com
naim@gmail.com
```

---

# 3. PRIMARY KEY Constraint

A `PRIMARY KEY` uniquely identifies each row in a table.

Rules:

* Cannot contain NULL values.
* Must contain unique values.

## Example

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50)
);
```

Example Table:

| Student_ID | Name  |
| ---------- | ----- |
| 101        | Naim  |
| 102        | Rahim |

---

# 4. FOREIGN KEY Constraint

A `FOREIGN KEY` creates a relationship between two tables.

## Parent Table

```sql
CREATE TABLE Department (
    Dept_ID NUMBER(3) PRIMARY KEY,
    Dept_Name VARCHAR2(30)
);
```

## Child Table

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50),
    Dept_ID NUMBER(3),
    FOREIGN KEY (Dept_ID)
        REFERENCES Department(Dept_ID)
);
```

---

# Example

## Department Table

| Dept_ID | Dept_Name |
| ------- | --------- |
| 1       | CSE       |
| 2       | EEE       |

## Student Table

| Student_ID | Name  | Dept_ID |
| ---------- | ----- | ------- |
| 101        | Naim  | 1       |
| 102        | Rahim | 2       |

---

# 5. CHECK Constraint

The `CHECK` constraint limits the values that can be inserted into a column.

## Example

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    CGPA NUMBER(3,2),
    CHECK (CGPA BETWEEN 0 AND 4)
);
```

Valid:

```text
3.85
```

Invalid:

```text
4.50
```

---

# 6. DEFAULT Constraint

The `DEFAULT` constraint provides a default value when no value is specified.

## Example

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Department VARCHAR2(30) DEFAULT 'CSE'
);
```

If no department is given:

```sql
INSERT INTO Student (Student_ID)
VALUES (101);
```

Output:

| Student_ID | Department |
| ---------- | ---------- |
| 101        | CSE        |

---

# Creating a Table with Multiple Constraints

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    CGPA NUMBER(3,2) CHECK (CGPA BETWEEN 0 AND 4),
    Department VARCHAR2(30) DEFAULT 'CSE'
);
```

---

# Why are Constraints Important?

* Ensure data accuracy.
* Maintain data integrity.
* Prevent duplicate data.
* Enforce relationships between tables.
* Reduce data entry errors.

---

# Key Takeaway

Constraints are rules that protect the quality and consistency of data in a database. Proper use of constraints leads to reliable and well-designed database systems.
