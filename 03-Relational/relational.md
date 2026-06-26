# Relational Model

## What is a Relational Model?

The Relational Model is a database model proposed by **Dr. E. F. Codd in 1970**. It represents data in the form of **tables (relations)** consisting of rows and columns.

A relational database stores related data in multiple tables and establishes relationships between them using keys.

---

## Basic Terminologies

### 1. Relation

A **Relation** is a table in a database.

**Example:** `Student` table.

---

### 2. Tuple

A **Tuple** is a single row or record in a table.

**Example:**

| Student_ID | Name | Department |
| ---------- | ---- | ---------- |
| 101        | Naim | CSE        |

This entire row is one tuple.

---

### 3. Attribute

An **Attribute** is a column in a table that describes a property of an entity.

**Example:**

* Student_ID
* Name
* Department
* Email

---

### 4. Domain

A **Domain** is the set of valid values that an attribute can contain.

**Examples:**

| Attribute | Domain       |
| --------- | ------------ |
| Age       | 18-30        |
| Gender    | Male, Female |
| CGPA      | 0.00 - 4.00  |

---

## Example: Student Relation

| Student_ID | Name  | Department | Email                                     |
| ---------- | ----- | ---------- | ----------------------------------------- |
| 101        | Naim  | CSE        | [naim@gmail.com](mailto:naim@gmail.com)   |
| 102        | Rahim | EEE        | [rahim@gmail.com](mailto:rahim@gmail.com) |
| 103        | Karim | BBA        | [karim@gmail.com](mailto:karim@gmail.com) |

### Explanation

* **Relation:** Student table
* **Tuples:** 3 rows
* **Attributes:** Student_ID, Name, Department, Email
* **Degree:** 4 (Number of columns)
* **Cardinality:** 3 (Number of rows)

---

# Keys in Relational Model

Keys are attributes that help identify records uniquely and establish relationships between tables.

## 1. Primary Key (PK)

A **Primary Key** uniquely identifies each record in a table.

### Example

| Student_ID (PK) | Name  |
| --------------- | ----- |
| 101             | Naim  |
| 102             | Rahim |

Here, `Student_ID` is the Primary Key because each value is unique.

---

## 2. Candidate Key

A **Candidate Key** is an attribute (or set of attributes) that can uniquely identify a record.

### Example

| Student_ID | Email                                     | Name  |
| ---------- | ----------------------------------------- | ----- |
| 101        | [naim@gmail.com](mailto:naim@gmail.com)   | Naim  |
| 102        | [rahim@gmail.com](mailto:rahim@gmail.com) | Rahim |

Both `Student_ID` and `Email` can uniquely identify a student, so both are Candidate Keys.

---

## 3. Alternate Key

Candidate keys that are not selected as the Primary Key are called Alternate Keys.

### Example

* Primary Key → Student_ID
* Alternate Key → Email

---

## 4. Composite Key

A **Composite Key** consists of two or more attributes that together uniquely identify a record.

### Example: Enrollment Table

| Student_ID | Course_ID | Semester |
| ---------- | --------- | -------- |
| 101        | CSE101    | Spring   |
| 101        | CSE102    | Spring   |
| 102        | CSE101    | Fall     |

Here, `(Student_ID, Course_ID)` together form a Composite Key.

---

## 5. Foreign Key (FK)

A **Foreign Key** is an attribute in one table that references the Primary Key of another table.

### Student Table

| Student_ID (PK) | Name  |
| --------------- | ----- |
| 101             | Naim  |
| 102             | Rahim |

### Result Table

| Result_ID | Student_ID (FK) | CGPA |
| --------- | --------------- | ---- |
| 1         | 101             | 3.85 |
| 2         | 102             | 3.70 |

Here, `Student_ID` in the Result table is a Foreign Key because it references the Student table.

---

# Relationship Between Tables

## Student Table

| Student_ID | Name  |
| ---------- | ----- |
| 101        | Naim  |
| 102        | Rahim |

## Course Table

| Course_ID | Course_Name    |
| --------- | -------------- |
| CSE101    | Database       |
| CSE102    | Data Structure |

## Enrollment Table

| Student_ID | Course_ID |
| ---------- | --------- |
| 101        | CSE101    |
| 101        | CSE102    |
| 102        | CSE101    |

This creates a **Many-to-Many (M:N)** relationship between Students and Courses.

---

# Advantages of Relational Model

* Simple and easy to understand.
* Stores data in tabular form.
* Reduces data redundancy.
* Maintains data consistency.
* Supports data integrity and security.
* Easy data retrieval using SQL.
* Supports relationships between tables.
* Easy backup and recovery.
* Flexible and scalable.

---

# Disadvantages of Relational Model

* Complex queries can become slow for large databases.
* Requires more storage because of multiple tables.
* Designing relationships can be difficult for beginners.
* Performance decreases with too many joins.

---

# Real-Life Applications

* Banking Systems
* University Management Systems
* E-Commerce Platforms
* Hospital Management Systems
* Railway Reservation Systems
* Library Management Systems

---

## Key Takeaway

The Relational Model organizes data into tables and connects those tables using keys. It is the foundation of modern relational database systems such as **Oracle, MySQL, PostgreSQL, and SQL Server**.
