# SQL vs NoSQL Databases

## 1. What is SQL?

**SQL (Structured Query Language)** databases are **relational databases** that store data in the form of **tables (rows and columns)**.

Each table has:

* Fixed structure (schema)
* Predefined columns and data types
* Relationships between tables using keys

### Examples of SQL Databases

* MySQL
* PostgreSQL
* Oracle
* Microsoft SQL Server


## 2. What is NoSQL?

**NoSQL (Not Only SQL)** databases are **non-relational databases** designed to handle:

* Large scale data
* Unstructured or semi-structured data
* High traffic and distributed systems

They **do not rely on tables** and usually do not enforce a fixed schema.

### Examples of NoSQL Databases

* MongoDB
* Cassandra
* Redis
* DynamoDB
* CouchDB

## 3. Core Difference Between SQL and NoSQL

| Feature        | SQL                 | NoSQL                     |
| -------------- | ------------------- | ------------------------- |
| Data Model     | Relational (Tables) | Non-Relational            |
| Schema         | Fixed schema        | Dynamic / Flexible        |
| Scalability    | Vertical scaling    | Horizontal scaling        |
| Transactions   | Strong ACID support | Often BASE model          |
| Query Language | SQL                 | Database-specific         |
| Best for       | Structured data     | Large & unstructured data |

## 4. Schema Difference (Very Important)

### SQL Schema

* Schema must be defined **before inserting data**
* Example:

```sql
CREATE TABLE users (
  id INT,
  name VARCHAR(50),
  email VARCHAR(100)
);
```

You **cannot insert extra fields** without altering the table.

### NoSQL Schema

* Schema is **dynamic**
* Each document can have different fields

Example (MongoDB):

```json
{
  "name": "Vinod",
  "email": "vinod@gmail.com",
  "age": 25
}
```

Another document in the same collection:

```json
{
  "name": "Rahul",
  "phone": "9999999999"
}
```

## 5. Data Storage Format

### SQL

* Data stored in **rows and columns**
* Relationships via **Primary Key & Foreign Key**

Example:

```
Users Table
| id | name  |
|----|-------|
| 1  | Vinod |
```

### NoSQL

* Data stored as:

  * Documents
  * Key-Value pairs
  * Graphs
  * Column-family stores

Example:

```json
{
  "_id": 1,
  "name": "Vinod"
}
```

## 6. ACID vs BASE (Interview Favorite 🔥)

### SQL follows ACID

* **A**tomicity – All or nothing
* **C**onsistency – Data remains valid
* **I**solation – Transactions don’t interfere
* **D**urability – Data is permanent after commit

Used in:

* Banking systems
* Payment systems
* Financial apps

### NoSQL often follows BASE

* **B**asically Available
* **S**oft state
* **E**ventual consistency

Used in:

* Social media
* Real-time analytics
* Big data applications

## 7. Scalability Difference

### SQL (Vertical Scaling)

* Increase CPU, RAM, storage on one machine
* Has physical limits
* Expensive at large scale

### NoSQL (Horizontal Scaling)

* Add more servers
* Easy to distribute data
* Designed for massive scale

## 8. Performance Comparison

| Use Case                | Better Choice |
| ----------------------- | ------------- |
| Complex joins           | SQL           |
| Transactions            | SQL           |
| Analytics               | SQL           |
| Large unstructured data | NoSQL         |
| High write traffic      | NoSQL         |
| Distributed systems     | NoSQL         |


## 9. Real-World Use Cases

### SQL Use Cases

* Banking systems
* E-commerce orders
* Inventory management
* HR and payroll systems

### NoSQL Use Cases

* Chat applications
* Recommendation engines
* IoT data
* Real-time logging


## 10. SQL vs NoSQL in FAANG Companies

**Truth:** FAANG uses **both**, not one.

| Company | SQL                 | NoSQL          |
| ------- | ------------------- | -------------- |
| Amazon  | Yes (RDS, Redshift) | Yes (DynamoDB) |
| Google  | Yes                 | Yes (Bigtable) |
| Meta    | Yes                 | Yes            |
| Netflix | Limited             | Heavy NoSQL    |
| Apple   | Yes                 | Yes            |

👉 **Interviews focus more on SQL** because:

* Logic
* Joins
* Data reasoning
* Business problems

## 11. Which One Should You Learn First?

✅ **SQL first (mandatory)**
Then → NoSQL

**Reason:**

* SQL builds strong data thinking
* SQL is asked in almost every interview
* NoSQL is easier after SQL