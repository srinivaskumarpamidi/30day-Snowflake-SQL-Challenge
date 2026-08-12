-- ============================================================
-- 30-Day Snowflake SQL Challenge
-- Day 3: SELECT, WHERE, Filtering & ORDER BY
-- ============================================================

-- Create Database
CREATE DATABASE db12;

-- Create Schema
CREATE SCHEMA db12.sa;

-- Use Schema
USE SCHEMA db12.sa;


-- ============================================================
-- 1. Create Employees Table
-- ============================================================

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30),
    experience INT
);


-- ============================================================
-- 2. Insert Sample Data
-- ============================================================

INSERT INTO employees
(emp_id, emp_name, department, salary, city, experience)
VALUES
(101, 'Ravi',     'IT',      65000, 'Guntur',     5),
(102, 'Priya',    'HR',      45000, 'Vijayawada', 3),
(103, 'Kiran',    'IT',      75000, 'Hyderabad',  7),
(104, 'Anjali',   'Finance', 55000, 'Guntur',     4),
(105, 'Suresh',   'IT',      40000, 'Vijayawada', 2),
(106, 'Lakshmi',  'HR',      60000, 'Guntur',     6),
(107, 'Arjun',    'Sales',   50000, 'Hyderabad',  4),
(108, 'Divya',    'IT',      85000, 'Bengaluru',  8),
(109, 'Ramesh',   'Finance', 70000, 'Vijayawada', 9),
(110, 'Swathi',   'Sales',   35000, 'Guntur',     1),
(111, 'Vamsi',    'IT',      55000, 'Hyderabad',  3),
(112, 'Sneha',    'HR',      48000, 'Bengaluru',  2),
(113, 'Naveen',   'Sales',   62000, 'Guntur',     5),
(114, 'Pooja',    'Finance', 42000, 'Hyderabad',  2),
(115, 'Mohan',    'IT',      90000, 'Vijayawada', 10);


-- ============================================================
-- 3. Basic SELECT Queries
-- ============================================================

-- Display all employees
SELECT *
FROM employees;

-- Select specific columns
SELECT emp_id, emp_name
FROM employees;

-- Select salary column
SELECT salary
FROM employees;


-- ============================================================
-- 4. WHERE Clause
-- ============================================================

-- Employees with more than 3 years of experience
SELECT *
FROM employees
WHERE experience > 3;

-- Employees working in IT
SELECT *
FROM employees
WHERE department = 'IT';

-- IT employees earning more than 60,000
SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 60000;

-- Employees from Guntur with more than 3 years of experience
SELECT *
FROM employees
WHERE city = 'Guntur'
  AND experience > 3;


-- ============================================================
-- 5. BETWEEN Operator
-- ============================================================

-- Employees with salary between 40,000 and 70,000
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 70000;


-- ============================================================
-- 6. IN and NOT IN Operators
-- ============================================================

-- Employees who are not from IT
SELECT *
FROM employees
WHERE department NOT IN ('IT');

-- Employees from IT or HR
SELECT *
FROM employees
WHERE department IN ('IT', 'HR');

-- Employees from Guntur or Vijayawada
SELECT *
FROM employees
WHERE city IN ('Guntur', 'Vijayawada');


-- ============================================================
-- 7. Multiple Conditions
-- ============================================================

-- Employees earning more than 50,000
-- and having more than 3 years of experience
SELECT *
FROM employees
WHERE salary > 50000
  AND experience > 3;

-- IT employees earning between 50,000 and 80,000
SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 50000
  AND salary < 80000;


-- ============================================================
-- 8. ORDER BY
-- ============================================================

-- Sort employees by salary in ascending order
SELECT *
FROM employees
ORDER BY salary;

-- Sort employees by salary in descending order
SELECT *
FROM employees
ORDER BY salary DESC;

-- Sort employees by name in descending order
SELECT *
FROM employees
ORDER BY emp_name DESC;

-- IT employees sorted by salary
-- Highest salary first
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- Employees with more than 3 years of experience
-- Highest experience first
SELECT *
FROM employees
WHERE experience > 3
ORDER BY experience DESC;


-- ============================================================
-- 9. Combining WHERE, IN and ORDER BY
-- ============================================================

-- Employees earning more than 60,000
-- Highest salary first
SELECT *
FROM employees
WHERE salary > 60000
ORDER BY salary DESC;

-- Employees from Guntur or Vijayawada
-- with salary above 45,000
SELECT *
FROM employees
WHERE city IN ('Guntur', 'Vijayawada')
  AND salary > 45000
ORDER BY salary DESC;


-- ============================================================
-- 10. BETWEEN + Multiple Column ORDER BY
-- ============================================================

-- Employees with 2 to 7 years of experience
-- Sort by experience first, then salary
SELECT *
FROM employees
WHERE experience BETWEEN 2 AND 7
ORDER BY experience DESC, salary DESC;


-- ============================================================
-- 11. NOT EQUAL Operator
-- ============================================================

-- Employees who are not in HR
-- and earn more than 50,000
SELECT emp_name, salary
FROM employees
WHERE department <> 'HR'
  AND salary > 50000
ORDER BY salary DESC;


-- ============================================================
-- End of Day 3
-- Topics Covered:
-- SELECT
-- WHERE
-- AND
-- BETWEEN
-- IN
-- NOT IN
-- <>
-- ORDER BY
-- ASC
-- DESC
-- Multiple conditions
-- Multiple-column sorting
-- ============================================================
