# Primary Key and Foreign Key

## 📌 Introduction

In relational databases, **keys** play a critical role in maintaining **data integrity**, **uniqueness**, and **relationships** between tables.
Among all keys, **Primary Key** and **Foreign Key** are the most important and most frequently tested concepts in **FAANG SQL interviews**.

Understanding these properly is mandatory before moving to **JOINs**, **Normalization**, and **Performance Optimization**.

---

## 🔑 What is a Primary Key?

A **Primary Key (PK)** is a column or a combination of columns that **uniquely identifies each row** in a table.

### ✅ Characteristics of Primary Key

* Must be **UNIQUE**
* Cannot contain **NULL values**
* Each table can have **only one Primary Key**
* Ensures **entity integrity**
* Automatically creates an **index** (in most databases)

---

### 🧠 Real-Life Analogy

Think of **Aadhaar Number / Passport Number**

* Every person has **one**
* No two people can share it
* It uniquely identifies a person

---

### 🧾 Example: Primary Key

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
```

✔ `student_id` uniquely identifies each student
❌ Two students cannot have the same `student_id`

---

### 🔁 Composite Primary Key

When **multiple columns together** form a primary key, it is called a **Composite Primary Key**.

```sql
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);
```

👉 Here, uniqueness is maintained by the **combination**, not individual columns.

---

## 🔗 What is a Foreign Key?

A **Foreign Key (FK)** is a column (or group of columns) that **creates a relationship between two tables**.

* It refers to the **Primary Key of another table**
* Maintains **referential integrity**

---

### 🧠 Real-Life Analogy

* **Student Table** → student_id (Primary Key)
* **Marks Table** → student_id (Foreign Key)

The marks **must belong to an existing student**.

---

### 🧾 Example: Foreign Key

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

✔ `customer_id` in `orders` must exist in `customers` table
❌ You cannot insert an order for a non-existing customer

---

## 🔄 Relationship Between Tables

| Relationship Type | Example            |
| ----------------- | ------------------ |
| One-to-One        | Person ↔ Passport  |
| One-to-Many       | Customer ↔ Orders  |
| Many-to-Many      | Students ↔ Courses |

📌 **Foreign Keys are essential for all relationships**

---

## 🚫 Referential Integrity Rules

When a Foreign Key exists:

1. You **cannot insert** a child record without a parent record
2. You **cannot delete** a parent record if child records exist (by default)

Example:

```sql
DELETE FROM customers WHERE customer_id = 10;
```

❌ Error if orders exist for customer_id = 10

---

## ⚙️ ON DELETE & ON UPDATE Actions

These define **what happens** when parent data changes.

### Common Options

| Action    | Meaning                                |
| --------- | -------------------------------------- |
| CASCADE   | Automatically update/delete child rows |
| SET NULL  | Set foreign key to NULL                |
| RESTRICT  | Prevent action                         |
| NO ACTION | Similar to RESTRICT                    |

---

### 🧾 Example with CASCADE

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
    ON DELETE CASCADE
);
```

✔ If a customer is deleted → their orders are deleted automatically

---

## ⚠️ Common Mistakes (Interview Trap 🚨)

1. ❌ Assuming Foreign Key must be unique
   ✔ It **can repeat** (one-to-many)

2. ❌ Thinking Primary Key can have NULL
   ✔ **Never allowed**

3. ❌ Forgetting index impact
   ✔ Primary Keys are indexed by default

4. ❌ Not handling delete/update behavior