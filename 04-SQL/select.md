# SELECT Statement

## What is SELECT?

The `SELECT` statement is used to retrieve data from one or more tables in a database.

It is the most frequently used SQL command because almost every application needs to fetch data from a database.

---

# Sample Table: Student

| Student_ID | Name    | Department | CGPA | City     |
| ---------- | ------- | ---------- | ---- | -------- |
| 101        | Naim    | CSE        | 3.85 | Dhaka    |
| 102        | Rahim   | EEE        | 3.70 | Khulna   |
| 103        | Karim   | CSE        | 3.95 | Dhaka    |
| 104        | Jannat  | BBA        | 3.60 | Rajshahi |
| 105        | Sumaiya | EEE        | 3.80 | Dhaka    |

---

# Basic Syntax

```sql
SELECT column_name
FROM table_name;
```

---

# 1. Retrieve All Columns

```sql
SELECT *
FROM Student;
```

`*` means all columns.

---

# 2. Retrieve Specific Columns

```sql
SELECT Name, Department
FROM Student;
```

### Output

| Name    | Department |
| ------- | ---------- |
| Naim    | CSE        |
| Rahim   | EEE        |
| Karim   | CSE        |
| Jannat  | BBA        |
| Sumaiya | EEE        |

---

# 3. Using WHERE Clause

The `WHERE` clause filters rows based on a condition.

```sql
SELECT *
FROM Student
WHERE Department = 'CSE';
```

### Output

| Student_ID | Name  | Department | CGPA | City  |
| ---------- | ----- | ---------- | ---- | ----- |
| 101        | Naim  | CSE        | 3.85 | Dhaka |
| 103        | Karim | CSE        | 3.95 | Dhaka |

---

# 4. Comparison Operators

| Operator | Meaning                  |
| -------- | ------------------------ |
| =        | Equal to                 |
| != or <> | Not equal to             |
| >        | Greater than             |
| <        | Less than                |
| >=       | Greater than or equal to |
| <=       | Less than or equal to    |

### Example

```sql
SELECT *
FROM Student
WHERE CGPA > 3.80;
```

---

# 5. Logical Operators

## AND

```sql
SELECT *
FROM Student
WHERE Department = 'CSE'
AND CGPA > 3.90;
```

### Output

| Student_ID | Name  | Department | CGPA | City  |
| ---------- | ----- | ---------- | ---- | ----- |
| 103        | Karim | CSE        | 3.95 | Dhaka |

---

## OR

```sql
SELECT *
FROM Student
WHERE Department = 'CSE'
OR Department = 'EEE';
```

---

## NOT

```sql
SELECT *
FROM Student
WHERE NOT Department = 'BBA';
```

---

# 6. DISTINCT

`DISTINCT` removes duplicate values.

```sql
SELECT DISTINCT Department
FROM Student;
```

### Output

| Department |
| ---------- |
| CSE        |
| EEE        |
| BBA        |

---

# 7. ORDER BY

Used to sort data.

## Ascending Order (Default)

```sql
SELECT *
FROM Student
ORDER BY CGPA;
```

## Descending Order

```sql
SELECT *
FROM Student
ORDER BY CGPA DESC;
```

---

# 8. BETWEEN

Used to select values within a range.

```sql
SELECT *
FROM Student
WHERE CGPA BETWEEN 3.70 AND 3.90;
```

---

# 9. IN Operator

Used to specify multiple values.

```sql
SELECT *
FROM Student
WHERE Department IN ('CSE', 'EEE');
```

---

# 10. LIKE Operator

Used for pattern matching.

## Students whose names start with 'N'

```sql
SELECT *
FROM Student
WHERE Name LIKE 'N%';
```

## Students whose names end with 'm'

```sql
SELECT *
FROM Student
WHERE Name LIKE '%m';
```

## Students whose names contain 'ai'

```sql
SELECT *
FROM Student
WHERE Name LIKE '%ai%';
```

---

# 11. IS NULL

Used to check NULL values.

```sql
SELECT *
FROM Student
WHERE City IS NULL;
```

---

# 12. Column Aliases

Aliases provide temporary names to columns.

```sql
SELECT Name AS Student_Name,
       CGPA AS Result
FROM Student;
```

---

# 13. Limiting Rows (Oracle)

```sql
SELECT *
FROM Student
FETCH FIRST 3 ROWS ONLY;
```

---

# Combining Multiple Conditions

```sql
SELECT Name, Department, CGPA
FROM Student
WHERE Department = 'CSE'
AND CGPA > 3.80
ORDER BY CGPA DESC;
```

---

# Frequently Used SELECT Queries

```sql
SELECT * FROM Student;

SELECT Name, Department FROM Student;

SELECT * FROM Student
WHERE Department = 'CSE';

SELECT DISTINCT Department
FROM Student;

SELECT * FROM Student
ORDER BY CGPA DESC;

SELECT * FROM Student
WHERE Name LIKE 'N%';

SELECT * FROM Student
WHERE Department IN ('CSE', 'EEE');
```

---

# Key Takeaway

The `SELECT` statement is the foundation of SQL. By combining `WHERE`, `ORDER BY`, `DISTINCT`, `BETWEEN`, `IN`, and `LIKE`, developers can retrieve exactly the data they need efficiently.

Mastering `SELECT` is essential because data retrieval is the most common operation in real-world applications.
