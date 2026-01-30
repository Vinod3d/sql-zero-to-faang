

# CREATE TABLE in SQL

## 1️⃣ What is CREATE TABLE?

`CREATE TABLE` is a **DDL (Data Definition Language)** command used to **create a new table** in a database.

A table is used to **store data in rows and columns**, where:

* Each **row** represents a record
* Each **column** represents an attribute

Once a table is created, data can be inserted using `INSERT`.

## 2️⃣ Basic Syntax of CREATE TABLE

```sql
CREATE TABLE table_name (
    column_name datatype constraints,
    column_name datatype constraints
);
```

### Example

```sql
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT
);
```

✅ This creates a table named `students` with 3 columns.

## 3️⃣ Commonly Used Data Types

| Data Type    | Description            |
| ------------ | ---------------------- |
| INT          | Stores integers        |
| BIGINT       | Stores large integers  |
| VARCHAR(n)   | Variable length string |
| CHAR(n)      | Fixed length string    |
| DATE         | Stores date            |
| TIMESTAMP    | Stores date & time     |
| BOOLEAN      | True / False           |
| DECIMAL(p,s) | Precise decimal values |

📌 **FAANG Tip:** Always choose data types carefully for performance and storage.

## 4️⃣ Constraints in CREATE TABLE

Constraints are rules applied to columns to **maintain data integrity**.

### 🔹 NOT NULL

Prevents NULL values.

```sql
name VARCHAR(50) NOT NULL
```

### 🔹 UNIQUE

Ensures all values in a column are unique.

```sql
email VARCHAR(100) UNIQUE
```

### 🔹 PRIMARY KEY

* Uniquely identifies each record
* Automatically implies `NOT NULL + UNIQUE`
* Only **one primary key per table**

```sql
student_id INT PRIMARY KEY
```

### 🔹 FOREIGN KEY

Used to create a relationship between two tables.

```sql
FOREIGN KEY (course_id) REFERENCES courses(course_id)
```

### 🔹 CHECK

Adds a condition on values.

```sql
age INT CHECK (age >= 18)
```

### 🔹 DEFAULT

Sets a default value if no value is provided.

```sql
status VARCHAR(20) DEFAULT 'active'
```

## 5️⃣ CREATE TABLE with Constraints

```sql
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    joining_date DATE DEFAULT CURRENT_DATE
);
```

## 6️⃣ Table-Level Constraints

Constraints can also be written **after column definitions**.

```sql
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

📌 **Use this style when constraints involve multiple columns.**

## 7️⃣ Composite Primary Key

A **composite key** uses more than one column as a primary key.

```sql
CREATE TABLE enrollment (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);
```

📌 Common in **many-to-many relationships**.

## 8️⃣ CREATE TABLE IF NOT EXISTS

Prevents error if table already exists.

```sql
CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50)
);
```

✔ Safe for production scripts


## 9️⃣ CREATE TABLE AS (CTAS)

Creates a table from the result of a query.

```sql
CREATE TABLE high_salary_employees AS
SELECT emp_id, name, salary
FROM employees
WHERE salary > 100000;
```

📌 **FAANG Use Case:** Data snapshots & analytics tables.


## 🔟 Interview Traps & Common Mistakes

❌ Forgetting `PRIMARY KEY`
❌ Using `VARCHAR(255)` everywhere
❌ Not adding constraints
❌ Poor naming conventions

✅ Use meaningful names
✅ Add constraints early
✅ Think about future joins


## 1️⃣1️⃣ Best Practices (FAANG Level)

✔ Use **snake_case** for table & column names
✔ Always define **primary keys**
✔ Add **foreign keys** where relationships exist
✔ Prefer **INT/BIGINT** for IDs
✔ Keep schema **simple and readable**

## 1️⃣2️⃣ Real-World Example (FAANG-Style)

```sql
CREATE TABLE user_activity (
    activity_id BIGINT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    activity_type VARCHAR(50),
    activity_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
```

💡 This type of table is **very common** in product companies.

## 1️⃣3️⃣ Summary

* `CREATE TABLE` defines **structure**, not data
* Constraints ensure **data correctness**
* Schema design impacts **performance & scalability**
* Strong schema knowledge = strong SQL interviews