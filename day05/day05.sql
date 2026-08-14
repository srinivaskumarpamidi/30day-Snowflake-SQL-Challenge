```sql
-- ============================================================
-- 30-Day Snowflake SQL Challenge
-- Day 5: String Functions + Date & Time Functions
-- ============================================================

-- ============================================================
-- 1. Database and Table Setup
-- ============================================================

CREATE DATABASE IF NOT EXISTS database1;

USE DATABASE database1;

CREATE OR REPLACE TABLE employee (
    emp_id NUMBER,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    phone VARCHAR,
    city VARCHAR,
    salary NUMBER(10,2),
    bonus NUMBER(10,2),
    join_date DATE,
    department VARCHAR,
    emp_code VARCHAR,
    raw_data VARCHAR
);


-- ============================================================
-- 2. View Employee Data
-- ============================================================

SELECT *
FROM employee;


-- ============================================================
-- 3. STRING CASE FUNCTIONS
-- ============================================================

-- Convert text to uppercase
SELECT
    first_name,
    UPPER(first_name) AS upper_name
FROM employee;

-- Convert text to lowercase
SELECT
    first_name,
    LOWER(first_name) AS lower_name
FROM employee;

-- Convert first letter of each word to uppercase
SELECT
    INITCAP('hello bro how are you') AS capitalized_text
FROM employee
LIMIT 1;


-- ============================================================
-- 4. STRING LENGTH AND EXTRACTION
-- ============================================================

-- Find string length
SELECT
    first_name,
    LENGTH(first_name) AS name_length
FROM employee;

-- LEFT - first 3 characters
SELECT
    first_name,
    LEFT(first_name, 3) AS first_three_chars
FROM employee;

-- RIGHT - last 4 characters
SELECT
    first_name,
    RIGHT(first_name, 4) AS last_four_chars
FROM employee;

-- SUBSTR - extract characters
SELECT
    first_name,
    SUBSTR(first_name, 1, 4) AS first_four_chars
FROM employee;


-- ============================================================
-- 5. CONCATENATION
-- ============================================================

-- CONCAT
SELECT
    CONCAT(first_name, ' ', last_name) AS full_name
FROM employee;

-- CONCAT using ||
SELECT
    first_name || ' ' || last_name AS full_name
FROM employee;


-- ============================================================
-- 6. REPLACE AND TRIM
-- ============================================================

-- Replace part of an email
SELECT
    email,
    REPLACE(email, 'gmail.com', 'company.com') AS modified_email
FROM employee;

-- Remove leading and trailing spaces
SELECT
    TRIM(' snowflake ') AS trimmed_text;


-- ============================================================
-- 7. LPAD AND RPAD
-- ============================================================

-- Add characters to the left
SELECT
    emp_id,
    LPAD(emp_id::VARCHAR, 6, '2') AS left_padded_id
FROM employee;

-- Add characters to the right
SELECT
    emp_id,
    RPAD(emp_id::VARCHAR, 6, '2') AS right_padded_id
FROM employee;


-- ============================================================
-- 8. REVERSE AND REPEAT
-- ============================================================

-- Reverse string
SELECT
    first_name,
    REVERSE(first_name) AS reversed_name
FROM employee;

-- Repeat a character
SELECT
    REPEAT('*', 10) AS repeated_text;


-- ============================================================
-- 9. POSITION, CHARINDEX AND CONTAINS
-- ============================================================

-- Find position of @
SELECT
    email,
    POSITION('@' IN email) AS at_position
FROM employee;

-- CHARINDEX
SELECT
    email,
    CHARINDEX('@', email) AS at_position
FROM employee;

-- Check whether email contains gmail
SELECT
    email,
    CONTAINS(email, 'gmail') AS contains_gmail
FROM employee;


-- ============================================================
-- 10. STARTSWITH AND ENDSWITH
-- ============================================================

SELECT
    first_name,
    STARTSWITH(first_name, 'K') AS starts_with_k
FROM employee;

SELECT
    first_name,
    ENDSWITH(first_name, 'r') AS ends_with_r
FROM employee;


-- ============================================================
-- 11. SPLIT_PART AND SPLIT
-- ============================================================

-- Extract username and domain from email
SELECT
    email,
    SPLIT_PART(email, '@', 1) AS username,
    SPLIT_PART(email, '@', 2) AS domain
FROM employee;

-- Split a sentence
SELECT
    SPLIT('an apple a day', ' ') AS split_words;


-- ============================================================
-- 12. TRANSLATE AND REPLACE
-- ============================================================

-- Replace character using TRANSLATE
SELECT
    first_name,
    TRANSLATE(first_name, 'k', 'o') AS translated_name
FROM employee;

-- Remove hyphens using REPLACE
SELECT
    REPLACE('123-45-67', '-', '') AS cleaned_number;


-- ============================================================
-- 13. ASCII AND CHR
-- ============================================================

-- ASCII value of a character
SELECT
    ASCII('A') AS ascii_value;

-- Convert ASCII value to character
SELECT
    CHR(65) AS character_value;


-- ============================================================
-- 14. LIKE AND ILIKE
-- ============================================================

-- Case-sensitive pattern matching
SELECT
    first_name
FROM employee
WHERE first_name LIKE 'K%';

-- Case-insensitive pattern matching
SELECT
    first_name
FROM employee
WHERE first_name ILIKE 'K%';


-- ============================================================
-- 15. CURRENT DATE AND TIME
-- ============================================================

SELECT CURRENT_TIME() AS current_time;

SELECT CURRENT_DATE() AS current_date;

SELECT CURRENT_TIMESTAMP() AS current_timestamp;


-- ============================================================
-- 16. DATE PART FUNCTIONS
-- ============================================================

-- Extract year
SELECT
    join_date,
    YEAR(join_date) AS join_year
FROM employee;

-- Extract month
SELECT
    join_date,
    MONTH(join_date) AS join_month
FROM employee;

-- Extract day
SELECT
    join_date,
    DAY(join_date) AS join_day
FROM employee;

-- Extract quarter
SELECT
    join_date,
    QUARTER(join_date) AS join_quarter
FROM employee;

-- Day name
SELECT
    join_date,
    DAYNAME(join_date) AS day_name
FROM employee;

-- Month name
SELECT
    join_date,
    MONTHNAME(join_date) AS month_name
FROM employee;


-- ============================================================
-- 17. EXTRACT
-- ============================================================

SELECT
    join_date,
    EXTRACT(YEAR FROM join_date) AS join_year,
    EXTRACT(MONTH FROM join_date) AS join_month,
    EXTRACT(DAY FROM join_date) AS join_day
FROM employee;


-- ============================================================
-- 18. DATEADD
-- ============================================================

SELECT
    join_date,
    DATEADD(DAY, 24, join_date) AS after_24_days,
    DATEADD(MONTH, 12, join_date) AS after_12_months,
    DATEADD(YEAR, 5, join_date) AS after_5_years
FROM employee;


-- ============================================================
-- 19. DATEDIFF
-- ============================================================

SELECT
    join_date,
    DATEDIFF(DAY, join_date, CURRENT_DATE()) AS days_since_joining
FROM employee;


-- ============================================================
-- 20. MONTHS_BETWEEN
-- ============================================================

SELECT
    join_date,
    MONTHS_BETWEEN(CURRENT_DATE(), join_date) AS months_since_joining
FROM employee;


-- ============================================================
-- 21. DATE_TRUNC
-- ============================================================

SELECT
    join_date,
    DATE_TRUNC('MONTH', join_date) AS month_start,
    DATE_TRUNC('YEAR', join_date) AS year_start
FROM employee;


-- ============================================================
-- 22. LAST_DAY
-- ============================================================

SELECT
    join_date,
    LAST_DAY(join_date, 'MONTH') AS month_end
FROM employee;


-- ============================================================
-- 23. ADD_MONTHS
-- ============================================================

SELECT
    join_date,
    ADD_MONTHS(join_date, 6) AS after_6_months
FROM employee;


-- ============================================================
-- 24. NEXT_DAY
-- ============================================================

SELECT
    NEXT_DAY(CURRENT_DATE(), 'MONDAY') AS next_monday;


-- ============================================================
-- 25. PREVIOUS_DAY
-- ============================================================

SELECT
    PREVIOUS_DAY(CURRENT_DATE(), 'MONDAY') AS previous_monday;


-- ============================================================
-- 26. DATE_FROM_PARTS
-- ============================================================

SELECT
    DATE_FROM_PARTS(2026, 8, 15) AS created_date;


-- ============================================================
-- 27. TIME_FROM_PARTS
-- ============================================================

SELECT
    TIME_FROM_PARTS(14, 30, 45) AS created_time;


-- ============================================================
-- 28. TIMESTAMP_FROM_PARTS
-- ============================================================

SELECT
    TIMESTAMP_FROM_PARTS(
        2026, 8, 15, 14, 30, 45
    ) AS created_timestamp;
```
