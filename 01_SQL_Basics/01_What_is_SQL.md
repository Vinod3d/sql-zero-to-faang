# 📘 What is SQL?

## 1️⃣ Introduction to SQL

**SQL** stands for **Structured Query Language**.
It is a **standard language** used to **store, retrieve, manipulate, and analyze data** stored in a **relational database**.

In simple words:

> SQL is the language we use to **talk to databases**.

Almost **every tech company**, including **FAANG**, uses SQL daily for:

* Fetching data
* Analyzing user behavior
* Generating reports
* Debugging production issues
* Making business decisions


## 2️⃣ Why SQL is Extremely Important (FAANG Perspective)

SQL is not optional if you are targeting **FAANG / product-based companies**.

### SQL is used by:

* Software Engineers
* Backend Developers
* Data Engineers
* Data Analysts
* Machine Learning Engineers
* Product Managers

### In FAANG interviews:

* SQL rounds are **mandatory**
* Questions are **logic-based**, not syntax-based
* Interviewers test **how you think with data**

> Strong SQL = Strong fundamentals


## 3️⃣ What Problems Does SQL Solve?

Without SQL:

* Data is hard to search
* Reports take hours or days
* Business decisions become guesswork

With SQL, you can:

* Find active users
* Calculate revenue
* Track growth
* Detect fraud
* Analyze trends

### Example:

```sql
SELECT * FROM users WHERE country = 'India';
```

This single query can fetch **millions of records in seconds**.

## 4️⃣ What is a Database?

A **database** is an organized collection of data stored electronically.

Example:

* User details
* Orders
* Payments
* Logs
* Messages

### Real-world analogy:

Think of a database as an **Excel file**, but:

* Much faster
* Much larger
* Much safer
* Multi-user supported

## 5️⃣ What is a Relational Database?

SQL works mainly with **relational databases**.

A relational database:

* Stores data in **tables**
* Tables are connected using **relationships**
* Uses **rows and columns**

### Example Table: `users`

| id | name  | email                                     | country |
| -- | ----- | ----------------------------------------- | ------- |
| 1  | Rahul | [rahul@gmail.com](mailto:rahul@gmail.com) | India   |
| 2  | John  | [john@gmail.com](mailto:john@gmail.com)   | USA     |

## 6️⃣ Core Components of SQL

### 1. Table

A table stores data in rows and columns.

### 2. Row (Record)

A single entry in a table.

### 3. Column (Field)

A specific attribute like name, email, age.


## 7️⃣ What Can You Do Using SQL?

SQL allows you to:

| Operation | Description             |
| --------- | ----------------------- |
| SELECT    | Read data               |
| INSERT    | Add new data            |
| UPDATE    | Modify existing data    |
| DELETE    | Remove data             |
| CREATE    | Create tables/databases |
| DROP      | Delete tables/databases |

Example:

```sql
SELECT name FROM users;
```


## 8️⃣ Types of SQL Commands

### 1️⃣ DDL – Data Definition Language

Used to define database structure.

Examples:

* CREATE
* ALTER
* DROP
* TRUNCATE

### 2️⃣ DML – Data Manipulation Language

Used to manipulate data.

Examples:

* INSERT
* UPDATE
* DELETE

### 3️⃣ DQL – Data Query Language

Used to query data.

Example:

* SELECT

### 4️⃣ DCL – Data Control Language

Used for permissions.

Examples:

* GRANT
* REVOKE

### 5️⃣ TCL – Transaction Control Language

Used for transactions.

Examples:

* COMMIT
* ROLLBACK

## 9️⃣ SQL vs Programming Languages

| SQL               | Programming Languages |
| ----------------- | --------------------- |
| Declarative       | Imperative            |
| Focuses on *what* | Focuses on *how*      |
| Data-centric      | Logic-centric         |
| Short queries     | Long code             |

Example:

```sql
SELECT COUNT(*) FROM orders;
```

This replaces **hundreds of lines of code** in other languages.


## 🔟 SQL is Declarative (Very Important)

SQL is **declarative**, meaning:

> You tell the database **what result you want**, not **how to get it**.

The database engine decides:

* Index usage
* Query plan
* Optimization

This is why **query writing skill** matters more than syntax.

## 1️⃣1️⃣ Popular SQL Databases

| Database   | Usage            |
| ---------- | ---------------- |
| MySQL      | Web apps         |
| PostgreSQL | FAANG favorite   |
| SQL Server | Enterprise       |
| Oracle     | Banking          |
| SQLite     | Lightweight apps |

👉 **Recommendation for this repo:**
**PostgreSQL*

## 1️⃣2️⃣ Common SQL Myths

❌ SQL is easy → **Wrong**
❌ Only for data analysts → **Wrong**
❌ No logic required → **Wrong**

✅ SQL requires:

* Logical thinking
* Data understanding
* Optimization skills

## 1️⃣3️⃣ How SQL is Used in FAANG (Real Example)

Question:

> Find daily active users

Concepts tested:

* WHERE
* GROUP BY
* DATE functions

FAANG does **not** ask:

* Syntax memorization

They ask:

* Can you **analyze data**?

## 1️⃣4️⃣ Key Takeaways

* SQL is a **must-have skill**
* Used everywhere in real systems
* Core skill for FAANG interviews
* Logic > Syntax
* Practice is everything