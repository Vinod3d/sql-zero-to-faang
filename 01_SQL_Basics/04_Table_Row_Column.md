# 📘 Table, Row, and Column in SQL

## 1. What is a Table?

In SQL, a **table** is the basic structure used to store data in a database.
It looks similar to an Excel sheet but is **much more powerful and structured**.

A table stores data in **rows and columns** and represents a **real-world entity**.

### Examples of real-world tables:

* `users`
* `employees`
* `orders`
* `products`
* `transactions`

Each table has:

* A **name**
* A fixed number of **columns**
* Any number of **rows**

---

## 2. Structure of a Table

A table is made of:

| Component | Meaning                    |
| --------- | -------------------------- |
| Table     | Collection of related data |
| Row       | One complete record        |
| Column    | One specific attribute     |

### Example: `employees` table

| emp_id | name   | department | salary |
| ------ | ------ | ---------- | ------ |
| 101    | Rahul  | IT         | 70000  |
| 102    | Anjali | HR         | 60000  |

---

## 3. What is a Row?

A **row** (also called a **record** or **tuple**) represents **one complete entry** in a table.

### Characteristics of a Row:

* Each row contains data for **all columns**
* Each row represents **one real-world object**
* Rows are **unordered** (SQL does not guarantee order)

### Example:

```
(101, 'Rahul', 'IT', 70000)
```

This row represents **one employee**.

📌 **Interview Tip:**
SQL tables do **not** store rows in any guaranteed order unless you use `ORDER BY`.

---

## 4. What is a Column?

A **column** represents a **single attribute** of the data.

### Characteristics of a Column:

* Has a **name**
* Has a **data type**
* Stores the **same type of data** for all rows

### Example Columns:

* `emp_id` → Integer
* `name` → Text
* `salary` → Numeric

📌 **Important Rule:**
Each column must store **atomic values** (no multiple values in one column).

---

## 5. Table Schema

The **schema** defines the structure of a table.

It includes:

* Column names
* Data types
* Constraints (PRIMARY KEY, NOT NULL, etc.)

### Example Schema:

```sql
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);
```

📌 Schema decides **what type of data is allowed** in the table.

---

## 6. Relationship Between Table, Row, and Column

Think of it like this:

* **Table** → Classroom
* **Row** → One student
* **Column** → Student detail (roll no, name, marks)

### Visual Representation:

```
TABLE
 ├── Column 1 (Attribute)
 ├── Column 2 (Attribute)
 └── Rows (Records)
```

---

## 7. Keys and Columns (Preview Concept)

Some columns play a **special role**:

| Key Type    | Purpose                      |
| ----------- | ---------------------------- |
| Primary Key | Uniquely identifies each row |
| Foreign Key | Connects tables              |
| Unique      | Prevents duplicate values    |

📌 Keys work **at column level**, not row level.

(We’ll cover this deeply in the next chapter.)

---

## 8. NULL Values in Columns

* `NULL` means **no value**
* It is **not zero**
* It is **not empty string**

### Example:

```sql
salary = NULL
```

📌 **FAANG Trap Question:**
`NULL != NULL` → comparison with NULL requires `IS NULL`.