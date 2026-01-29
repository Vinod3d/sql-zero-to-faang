# 📘 Database Basics (SQL Foundations)

## 1️⃣ What is a Database?

A **database** is an organized collection of data stored electronically so that it can be **easily accessed, managed, and updated**.

Instead of storing data in files (like Excel or text files), databases store data in a **structured format** that allows:

* Fast searching
* Reliable updates
* Secure access
* Handling large volumes of data

📌 **Real-world example:**

* Amazon stores users, orders, payments, products, reviews — all inside databases.

## 2️⃣ Why Do We Need Databases?

Problems with traditional file systems:

* ❌ Data duplication
* ❌ Data inconsistency
* ❌ Difficult searching
* ❌ No concurrency control
* ❌ Poor security

Databases solve these problems by providing:

* ✅ Centralized data storage
* ✅ Data integrity
* ✅ High performance
* ✅ Security & access control
* ✅ Backup and recovery

💡 **FAANG Insight:**
Scalable systems depend heavily on well-designed databases.

## 3️⃣ What is DBMS?

**DBMS (Database Management System)** is software that allows users to **create, read, update, and delete data** in a database.

### Common DBMS Examples:

| DBMS       | Type       |
| ---------- | ---------- |
| MySQL      | Relational |
| PostgreSQL | Relational |
| Oracle     | Relational |
| SQL Server | Relational |
| MongoDB    | NoSQL      |

📌 SQL is used to interact with **Relational DBMS**.

## 4️⃣ Types of Databases

### 1. Relational Databases (RDBMS)

* Data stored in **tables (rows & columns)**
* Uses **SQL**
* Enforces relationships using keys

Examples:

* MySQL
* PostgreSQL
* Oracle

### 2. NoSQL Databases

* Schema-less or flexible schema
* Handles unstructured or semi-structured data

Examples:

* MongoDB (Document)
* Redis (Key-Value)
* Cassandra (Column-based)

📌 **FAANG uses BOTH**, but SQL is mandatory for interviews.

## 5️⃣ Database vs DBMS

| Database                        | DBMS                        |
| ------------------------------- | --------------------------- |
| Collection of data              | Software to manage database |
| Passive                         | Active                      |
| Cannot manipulate data directly | Allows CRUD operations      |

## 6️⃣ Table, Row, Column (Core Concepts)

### Table

A **table** stores data in a structured form.

### Row (Record)

Each row represents a **single entry**.

### Column (Attribute)

Each column represents a **property** of data.

📌 Example: `users` table

| id | name  | email                                     |
| -- | ----- | ----------------------------------------- |
| 1  | Rahul | [rahul@gmail.com](mailto:rahul@gmail.com) |
| 2  | Neha  | [neha@gmail.com](mailto:neha@gmail.com)   |

## 7️⃣ Schema

A **schema** defines the **structure of a database**, including:

* Tables
* Columns
* Data types
* Constraints

📌 Think of schema as a **blueprint**.

```sql
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);
```

## 8️⃣ Keys in Database (Overview)

### Primary Key

* Uniquely identifies a row
* Cannot be NULL

### Foreign Key

* Creates relationship between tables

📌 Example:

* `orders.user_id` → `users.id`

## 9️⃣ CRUD Operations

| Operation | SQL Command |
| --------- | ----------- |
| Create    | INSERT      |
| Read      | SELECT      |
| Update    | UPDATE      |
| Delete    | DELETE      |

CRUD is the **heart of database interaction**.

## 🔟 Data Integrity

Data integrity ensures **accuracy and consistency** of data.

Types:

* Entity Integrity (Primary Key)
* Referential Integrity (Foreign Key)
* Domain Integrity (Data Types)

📌 FAANG systems **strictly enforce integrity**.


## 1️⃣1️⃣ Transactions (Intro)

A **transaction** is a sequence of operations executed as a single unit.

Example:

* Deduct money from account A
* Add money to account B

Either **both succeed or both fail**.

(ACID will be covered later in detail.)

## 1️⃣2️⃣ OLTP vs OLAP

| OLTP                  | OLAP                |
| --------------------- | ------------------- |
| Day-to-day operations | Analytics           |
| Many small queries    | Few complex queries |
| INSERT, UPDATE        | SELECT heavy        |

📌 FAANG analytics teams rely heavily on OLAP.