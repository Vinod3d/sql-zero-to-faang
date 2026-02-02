# 📘 INSERT, UPDATE & DELETE in SQL

These three commands are called **DML (Data Manipulation Language)** commands.
They are used to **add, modify, and remove data** from a table.

> ⚠️ Very Important:
> These commands **change data permanently**, so always be careful while using them.

## 1️⃣ INSERT – Add Data into a Table

The `INSERT` statement is used to **add new rows (records)** into a table.


### 🔹 Basic INSERT Syntax

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

### ✅ Example

```sql
INSERT INTO employees (id, name, salary, department)
VALUES (1, 'Rahul', 50000, 'IT');
```

✔ Inserts **one row** into the `employees` table.

---

### 🔹 Insert Without Column Names (Not Recommended)

```sql
INSERT INTO employees
VALUES (2, 'Amit', 60000, 'HR');
```

⚠️ Risky because:

* Column order must match exactly
* Breaks if table structure changes

👉 **FAANG Tip:** Always mention column names.

---

### 🔹 Insert Multiple Rows

```sql
INSERT INTO employees (id, name, salary, department)
VALUES
(3, 'Neha', 70000, 'Finance'),
(4, 'Priya', 65000, 'IT');
```

✔ Faster and cleaner than multiple single inserts.

---

### 🔹 Insert Using SELECT (Very Important)

```sql
INSERT INTO backup_employees (id, name, salary)
SELECT id, name, salary
FROM employees
WHERE department = 'IT';
```

✔ Used for:

* Data migration
* Backup tables
* FAANG data movement questions

---

## 2️⃣ UPDATE – Modify Existing Data

The `UPDATE` statement is used to **change existing records** in a table.

### 🔹 Basic UPDATE Syntax

```sql
UPDATE table_name
SET column1 = value1
WHERE condition;
```

### ✅ Example

```sql
UPDATE employees
SET salary = 55000
WHERE id = 1;
```

✔ Updates salary of employee with `id = 1`.


### ⚠️ MOST DANGEROUS MISTAKE

```sql
UPDATE employees
SET salary = 55000;
```

❌ This updates **ALL rows** in the table.

👉 **Golden Rule:**

> NEVER run UPDATE without WHERE in real systems.

---

### 🔹 Update Multiple Columns

```sql
UPDATE employees
SET salary = 75000,
    department = 'Management'
WHERE name = 'Neha';
```

---

### 🔹 Update Using Another Table (Advanced)

```sql
UPDATE employees e
SET salary = b.new_salary
FROM bonus_table b
WHERE e.id = b.emp_id;
```

✔ Common in real production systems.

---

## 3️⃣ DELETE – Remove Data from a Table

The `DELETE` statement removes **rows from a table**.

### 🔹 Basic DELETE Syntax

```sql
DELETE FROM table_name
WHERE condition;
```


### ✅ Example

```sql
DELETE FROM employees
WHERE id = 4;
```

✔ Deletes only one specific row.

### ⚠️ DELETE Without WHERE (Very Dangerous)

```sql
DELETE FROM employees;
```

❌ Deletes **ALL records** from the table
❌ Table structure remains


### 🔹 DELETE vs TRUNCATE (Interview Favorite)

| Feature         | DELETE     | TRUNCATE       |
| --------------- | ---------- | -------------- |
| WHERE clause    | ✅ Yes      | ❌ No           |
| Rollback        | ✅ Possible | ❌ Not possible |
| Speed           | Slower     | Faster         |
| Table structure | Remains    | Remains        |

---

## 4️⃣ Using Transactions (FAANG Level)

Always use **transactions** when modifying data.

```sql
BEGIN;

UPDATE employees
SET salary = salary + 5000
WHERE department = 'IT';

ROLLBACK;  -- Undo changes
-- COMMIT; -- Save changes
```

✔ Prevents accidental data loss
✔ Very important for production databases