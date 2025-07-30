# 👨‍💻 Adidas Code Agility Challenge - Q1: Departments with No Employees

This repository contains the solution for the **first question** of the Adidas Code Agility Challenge. The problem involves querying employee and department data to identify departments that currently have **no employees**.

---

## 📝 Problem Description

Information is stored in two tables:

### `employees` table:
| Column      | Description                        |
|-------------|------------------------------------|
| `id`        | The unique employee ID             |
| `full_name` | The employee's full name           |
| `department`| A foreign key referencing `departments.id` |

### `departments` table:
| Column    | Description                |
|-----------|----------------------------|
| `id`      | The unique department ID   |
| `dep_name`| The name of the department |

---

## 🎯 Task

Build a query to display only **one column**, `dep_name`, which contains all the departments **that have no employees assigned**, sorted by the department `id`.

---

## 📊 Example

### Input Tables

#### departments

| id | dep_name     |
|----|--------------|
| 1  | IT           |
| 2  | HR           |
| 3  | Sales        |
| 4  | Warehousing  |

#### employees

| id | full_name       | department |
|----|------------------|------------|
| 1  | James Miller     | 1          |
| 2  | Joseph Harvey    | 1          |
| 3  | Anna Lawson      | 2          |
| 4  | Arthur Saunders  | 3          |

### ✅ Expected Output

| dep_name    |
|-------------|
| Warehousing |

---

## 🧠 SQL Solution

```sql
SELECT d.dep_name
FROM departments d
LEFT JOIN employees e
ON d.id = e.department
WHERE e.id IS NULL
ORDER BY d.id;
