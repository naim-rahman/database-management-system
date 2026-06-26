# SQL Data Types

Data types specify what kind of data can be stored in a table column.

---

# Numeric Data Types

| Data Type   | Description                             | Example   |
| ----------- | --------------------------------------- | --------- |
| NUMBER(p,s) | Stores numbers with precision and scale | 125, 3.85 |
| INTEGER     | Stores whole numbers                    | 100       |
| FLOAT       | Stores decimal numbers                  | 3.1416    |

## Examples

```sql
Age NUMBER(2)
CGPA NUMBER(3,2)
Salary NUMBER(8,2)
```

---

# Character Data Types

| Data Type   | Description                      | Example    |
| ----------- | -------------------------------- | ---------- |
| CHAR(n)     | Fixed-length character string    | 'A', 'CSE' |
| VARCHAR2(n) | Variable-length character string | 'Naim'     |

## Examples

```sql
Department CHAR(3)
Name VARCHAR2(50)
Email VARCHAR2(100)
```

---

# Date and Time Data Types

| Data Type | Description                                    | Example              |
| --------- | ---------------------------------------------- | -------------------- |
| DATE      | Stores date and time values                    | 25-JUN-2026          |
| TIMESTAMP | Stores date and time with fractions of seconds | 25-JUN-2026 10:30:45 |

## Examples

```sql
Birth_Date DATE
Created_At TIMESTAMP
```

---

# Large Object Data Types

| Data Type | Description                     |
| --------- | ------------------------------- |
| CLOB      | Stores large text data          |
| BLOB      | Stores images, audio, and files |

---

# Example Table

```sql
CREATE TABLE Student (
    Student_ID NUMBER(5),
    Name VARCHAR2(50),
    Department CHAR(3),
    CGPA NUMBER(3,2),
    Birth_Date DATE
);
```

---

# Explanation of the Table

| Column     | Data Type    | Purpose                |
| ---------- | ------------ | ---------------------- |
| Student_ID | NUMBER(5)    | Stores student ID      |
| Name       | VARCHAR2(50) | Stores student name    |
| Department | CHAR(3)      | Stores department code |
| CGPA       | NUMBER(3,2)  | Stores CGPA            |
| Birth_Date | DATE         | Stores date of birth   |

---

# Choosing the Correct Data Type

* Use `NUMBER` for numeric values.
* Use `VARCHAR2` for names and text.
* Use `CHAR` for fixed-length values.
* Use `DATE` for dates.
* Use `BLOB` and `CLOB` for large data.

---
