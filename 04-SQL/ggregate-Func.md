# SQL Aggregate Functions

## What are Aggregate Functions?

Aggregate functions perform calculations on multiple rows and return a **single result**.

They are commonly used for:

* Counting records
* Finding maximum and minimum values
* Calculating averages
* Calculating sums

---

# Sample Table: Student

| Student_ID | Name    | Department | CGPA |
| ---------- | ------- | ---------- | ---- |
| 101        | Naim    | CSE        | 3.85 |
| 102        | Rahim   | EEE        | 3.70 |
| 103        | Karim   | CSE        | 3.95 |
| 104        | Jannat  | BBA        | 3.60 |
| 105        | Sumaiya | EEE        | 3.80 |

---

# Types of Aggregate Functions

1. COUNT()
2. SUM()
3. AVG()
4. MAX()
5. MIN()

---

# 1. COUNT()

The `COUNT()` function returns the number of rows.

## Syntax

```sql
SELECT COUNT(*)
FROM table_name;
```

## Example

```sql
SELECT COUNT(*)
FROM Student;
```

### Output

| COUNT(*) |
| -------- |
| 5        |

---

# Count Students in a Department

```sql
SELECT COUNT(*)
FROM Student
WHERE Department = 'CSE';
```

### Output

| COUNT(*) |
| -------- |
| 2        |

---

# 2. SUM()

The `SUM()` function returns the total of a numeric column.

## Example Table: Employee

| Emp_ID | Name  | Salary |
| ------ | ----- | ------ |
| 101    | Naim  | 50000  |
| 102    | Rahim | 60000  |
| 103    | Karim | 55000  |

```sql
SELECT SUM(Salary)
FROM Employee;
```

### Output

| SUM(Salary) |
| ----------- |
| 165000      |

---

# 3. AVG()

The `AVG()` function calculates the average value.

```sql
SELECT AVG(CGPA)
FROM Student;
```

### Output

| AVG(CGPA) |
| --------- |
| 3.78      |

---

# 4. MAX()

The `MAX()` function returns the highest value.

```sql
SELECT MAX(CGPA)
FROM Student;
```

### Output

| MAX(CGPA) |
| --------- |
| 3.95      |

---

# 5. MIN()

The `MIN()` function returns the lowest value.

```sql
SELECT MIN(CGPA)
FROM Student;
```

### Output

| MIN(CGPA) |
| --------- |
| 3.60      |

---

# Using Aggregate Functions with WHERE

```sql
SELECT AVG(CGPA)
FROM Student
WHERE Department = 'CSE';
```

### Output

| AVG(CGPA) |
| --------- |
| 3.90      |

---

# Using Multiple Aggregate Functions

```sql
SELECT
    COUNT(*) AS Total_Students,
    MAX(CGPA) AS Highest_CGPA,
    MIN(CGPA) AS Lowest_CGPA,
    AVG(CGPA) AS Average_CGPA
FROM Student;
```

### Output

| Total_Students | Highest_CGPA | Lowest_CGPA | Average_CGPA |
| -------------- | ------------ | ----------- | ------------ |
| 5              | 3.95         | 3.60        | 3.78         |

---

# Real-World Examples

## Find the highest-paid employee

```sql
SELECT MAX(Salary)
FROM Employee;
```

## Calculate the total company salary expense

```sql
SELECT SUM(Salary)
FROM Employee;
```

## Find the average CGPA of students

```sql
SELECT AVG(CGPA)
FROM Student;
```

---

# Important Notes

* `SUM()` and `AVG()` Work only with numeric columns.
* `COUNT(*)` Counts all rows.
* Aggregate functions ignore `NULL` values (except `COUNT(*)`).

---

