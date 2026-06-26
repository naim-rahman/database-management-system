# Entity Relationship (ER) Model

## What is an ER Model?

The Entity Relationship (ER) Model is a conceptual model used to design the structure of a database.

## Components of ER Model

### 1. Entity

An entity is a real-world object or thing.

**Examples:**

* Student
* Teacher
* Course

### 2. Attributes

Attributes describe the properties of an entity.

**Examples for Student:**

* Student_ID
* Name
* Department

### 3. Relationship

A relationship shows the association between two entities.

**Example:**

* Student enrolls in Course.

## Types of Attributes

* Simple Attribute
* Composite Attribute
* Single-Valued Attribute
* Multi-Valued Attribute
* Derived Attribute

## Types of Relationships

* One-to-One (1:1)
* One-to-Many (1:N)
* Many-to-One (N:1)
* Many-to-Many (M:N)

## Example ER Diagram

Student ---- Enrolls ---- Course

A student can enroll in one or more courses.
