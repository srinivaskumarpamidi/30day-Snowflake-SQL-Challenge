# Day 7 — Snowflake SQL Challenge

## 📌 Topics Covered

Today I practiced:

* `UNION`
* `UNION ALL`
* `ORDER BY`
* `TRUNCATE TABLE`
* Column aliases using `AS`
* Combining values from multiple columns into a single output column

## 🧑‍💻 Practice

### UNION

```sql
SELECT emp_name, phone_nr AS contact_nr
FROM emp

UNION

SELECT emp_name, office_nr AS contact_nr
FROM emp

ORDER BY emp_name DESC;
```

### TRUNCATE TABLE

```sql
TRUNCATE TABLE emp;
```

### UNION ALL

```sql
SELECT emp_name, phone_nr AS number
FROM emp

UNION ALL

SELECT emp_name, office_nr AS number
FROM emp;
```

## 🎯 Key Learning

* `UNION` combines results and removes duplicate rows.
* `UNION ALL` combines results while keeping duplicates.
* `ORDER BY` sorts the final result.
* `TRUNCATE TABLE` removes all rows while preserving the table structure.
* `AS` can be used to give a column an alias.

## 🚀 Progress

**30-Day Snowflake SQL Challenge — Day 7/30**

Continuing my journey of learning Snowflake SQL through daily hands-on practice.
