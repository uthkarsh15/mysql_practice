# MySQL Practice

A collection of SQL scripts written while practicing core MySQL concepts — from basic table creation to subqueries and views.

## 📂 Files

| File | Topics Covered |
|---|---|
| `practice 1.sql` | Database/table basics, `CHECK` constraints, `PRIMARY KEY` |
| `practice 2.sql` | Table creation, `INSERT`, `WHERE` filters, `ORDER BY`, `LIMIT`, aggregate functions (`MAX`, `AVG`, `COUNT`), `GROUP BY` / `HAVING`, `UPDATE` / `DELETE`, `FOREIGN KEY` with `ON UPDATE/DELETE CASCADE` |
| `practice 3.sql` | `ALTER TABLE` (add/drop/modify/change/rename columns), `TRUNCATE TABLE`, subqueries (scalar, correlated, `IN`), derived tables, `CREATE VIEW` / `DROP VIEW` |
| `practice 4.sql` | *(reserved for upcoming practice)* |

## 🧠 Concepts Practiced

- **DDL** — `CREATE DATABASE`, `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`, `TRUNCATE TABLE`
- **DML** — `INSERT`, `UPDATE`, `DELETE`
- **Constraints** — `PRIMARY KEY`, `NOT NULL`, `CHECK`, `FOREIGN KEY` with cascading actions
- **Querying** — `SELECT`, `DISTINCT`, `WHERE`, `BETWEEN`, `IN` / `NOT IN`, `LIKE`-style filtering, `ORDER BY`, `LIMIT`
- **Aggregation** — `COUNT`, `AVG`, `MAX`, `GROUP BY`, `HAVING`
- **Subqueries** — scalar subqueries, correlated subqueries, subqueries in `FROM` (derived tables)
- **Views** — creating and querying a `VIEW`

## ▶️ How to Run

1. Open a MySQL client (MySQL Workbench, CLI, or any GUI tool).
2. Run a script file directly, e.g.:
   ```bash
   mysql -u <username> -p < "practice 1.sql"
   ```
   or open the `.sql` file in your client and execute it statement by statement.
3. Each file creates its own sample database/table (e.g. `college`, `school`), so scripts can be run independently.

## 📌 Notes

- These scripts are for **learning and practice purposes** — table/column names and sample data are illustrative, not production schemas.
- Some statements (e.g. `set sql_safe_updates = 0;`) disable MySQL's safe-update mode temporarily to allow bulk `UPDATE`/`DELETE` without a key-based `WHERE` clause — use with care.

## 🛠️ Tech

- **Database:** MySQL

---
*Maintained by [uthkarsh15](https://github.com/uthkarsh15) as part of ongoing SQL practice.*
