# 06. SQL Data Types

## 📌 What are SQL Data Types?

SQL **Data Types** define **what kind of data** can be stored in a column of a table.
They tell the database:

* what values are allowed
* how much memory to allocate
* how data is stored and processed

👉 Choosing the **right data type** improves:

* performance
* storage efficiency
* data accuracy

---

## 📌 Why Data Types Are Important (Interview Point)

If wrong data type is used:

* database becomes slow
* memory is wasted
* incorrect data gets stored
* indexes become inefficient

💡 **FAANG Interview Line:**

> “Correct data types reduce storage, improve indexing, and optimize query performance.”

---

## 📌 Main Categories of SQL Data Types

SQL data types are mainly divided into:

1. Numeric Data Types
2. Character / String Data Types
3. Date & Time Data Types
4. Boolean Data Type
5. Binary Data Types (basic idea)

---

## 1️⃣ Numeric Data Types

Used to store **numbers**.

### 🔹 INT / INTEGER

* Stores whole numbers (no decimals)
* Example: `1, 10, -50`

```sql
age INT
```

**Use case:** age, quantity, count

---

### 🔹 SMALLINT / BIGINT

* `SMALLINT` → small range numbers
* `BIGINT` → very large numbers

```sql
population BIGINT
```

**Use case:** population, large IDs

---

### 🔹 DECIMAL / NUMERIC

* Stores **exact decimal values**
* Used when precision is important

```sql
salary DECIMAL(10,2)
```

👉 `10` = total digits
👉 `2` = digits after decimal

**Use case:** money, price, salary
💡 **Always use DECIMAL for financial data**

---

### 🔹 FLOAT / REAL / DOUBLE

* Stores approximate decimal values
* Faster but **not 100% accurate**

```sql
temperature FLOAT
```

**Use case:** scientific values, sensor data

❌ **Not recommended for money**

---

## 2️⃣ Character / String Data Types

Used to store **text**.

---

### 🔹 CHAR(n)

* Fixed length string
* Always occupies `n` characters

```sql
gender CHAR(1)
```

If you store `M`, remaining space is wasted.

**Use case:** fixed values (M/F, Y/N)

---

### 🔹 VARCHAR(n)

* Variable length string
* Uses only required space

```sql
name VARCHAR(100)
```

**Most commonly used string type**

💡 **Interview Tip:**

> VARCHAR is preferred over CHAR in real systems.

---

### 🔹 TEXT

* Stores very long text
* No fixed length

```sql
description TEXT
```

**Use case:** comments, reviews, blogs

⚠️ TEXT columns are usually **not indexed fully**

---

## 3️⃣ Date & Time Data Types

Used to store **date and time values**.

---

### 🔹 DATE

Stores only date.

```sql
birth_date DATE
```

Format: `YYYY-MM-DD`

---

### 🔹 TIME

Stores only time.

```sql
login_time TIME
```

Format: `HH:MM:SS`

---

### 🔹 TIMESTAMP / DATETIME

Stores date + time.

```sql
created_at TIMESTAMP
```

💡 Commonly used with:

```sql
DEFAULT CURRENT_TIMESTAMP
```

**Use case:** record creation time, logs

---

## 4️⃣ Boolean Data Type

Used to store **true or false** values.

```sql
is_active BOOLEAN
```

Values:

* TRUE / FALSE
* or 1 / 0 (depends on DB)

**Use case:** status flags, active/inactive users

---

## 5️⃣ Binary Data Types (Basic Idea)

Used to store **binary data**.

Examples:

* images
* files
* encrypted data

```sql
profile_pic BLOB
```

⚠️ In real projects, files are usually stored **outside DB**
and DB stores only the **file path**

---

## 📌 Common Mistakes (Very Important)

❌ Using `INT` for phone numbers
✔ Use `VARCHAR` (phone numbers are not numeric)

❌ Using `FLOAT` for money
✔ Use `DECIMAL`

❌ Using `TEXT` everywhere
✔ Use `VARCHAR` where possible

---

## 📌 Data Type Selection Tips (FAANG Level)

* Choose **smallest possible data type**
* Use `INT` instead of `BIGINT` if range allows
* Use `VARCHAR` instead of `TEXT` when size is known
* Always think about **indexing**

💡 **Interview Line:**

> “Smaller data types improve cache usage and query speed.”

---

## 📌 Example Table Using Proper Data Types

```sql
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    age INT,
    salary DECIMAL(10,2),
    is_active BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

## 📌 Summary

* Data types control **what kind of data** a column can store
* Correct data types improve **performance and accuracy**
* `INT`, `VARCHAR`, `DECIMAL`, `DATE`, `TIMESTAMP` are most common
* Wrong data type choice is a **real-world production issue**