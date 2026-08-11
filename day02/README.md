# Day 2 — Snowflake Functions, CASE & Data Masking

## 📌 Topics Covered

Today I practiced Snowflake functions, string manipulation, CASE expressions, context functions, masking policies, and role-based access control.

## 🛠️ Concepts Practiced

- Basic SELECT statements
- RIGHT() function
- String concatenation using `||`
- CURRENT_USER()
- CURRENT_DATE()
- CURRENT_ROLE()
- CASE expressions
- Creating and inserting data into tables
- Creating masking policies
- Applying masking policies to columns
- Creating roles
- Granting privileges
- Role-based data masking

## 🔤 String Functions

Used the `RIGHT()` function to extract characters from a string.

```sql
SELECT RIGHT('9000366569', 7);
