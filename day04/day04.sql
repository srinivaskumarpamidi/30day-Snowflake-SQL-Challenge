-- =========================================================
-- 30-DAY SNOWFLAKE SQL CHALLENGE
-- DAY 04 - STRING, DATE & SESSION FUNCTIONS
-- =========================================================


-- =========================================================
-- 1. CREATE TABLE AND INSERT DATA
-- =========================================================

CREATE OR REPLACE TABLE GROCERY_T (
    STOCK STRING,
    QUANTITY NUMBER,
    PRICE NUMBER
);

INSERT INTO GROCERY_T VALUES
('Tea', 45, 10),
('Sugar', 65, 15),
('BISCUIT', 25, 21),
('Namkeen', 41, 20),
('Puffs', 42, 22),
('Snacks', 45, 14);


-- =========================================================
-- 2. BASIC SELECT AND ARITHMETIC OPERATION
-- =========================================================

SELECT *
FROM GROCERY_T;

SELECT STOCK
FROM GROCERY_T;

SELECT
    STOCK,
    QUANTITY,
    PRICE,
    QUANTITY * PRICE AS TOTAL_PRICE
FROM GROCERY_T;


-- =========================================================
-- 3. STRING FUNCTIONS
-- =========================================================

-- INITCAP: Converts the first letter of each word to uppercase

SELECT INITCAP('sQL snowflake challenge') AS FULL_NAME;


-- UPPER: Converts text to uppercase

SELECT UPPER(STOCK) AS STOCK_UPPER
FROM GROCERY_T;


-- LOWER: Converts text to lowercase

SELECT LOWER(STOCK) AS STOCK_LOWER
FROM GROCERY_T;


-- INITCAP: Converts text into title case

SELECT INITCAP(STOCK) AS STOCK_TITLE
FROM GROCERY_T;


-- Convert all STOCK values to uppercase

UPDATE GROCERY_T
SET STOCK = UPPER(STOCK);

SELECT *
FROM GROCERY_T;


-- =========================================================
-- 4. REPLACE FUNCTION
-- =========================================================

-- Replace a character in a string

SELECT REPLACE('banana', 'a', 'x') AS RESULT;


-- Remove double spaces

SELECT REPLACE(
    '   sample     text     with     spaces   ',
    '  ',
    ''
) AS RESULT;


-- =========================================================
-- 5. DATE, TIME AND SESSION FUNCTIONS
-- =========================================================

SELECT
    CURRENT_DATE() AS CURRENT_DATE,
    CURRENT_TIME() AS CURRENT_TIME,
    CURRENT_SCHEMA() AS CURRENT_SCHEMA;


-- Display session parameters

SHOW PARAMETERS;


-- Set timezone to India

ALTER SESSION SET TIMEZONE = 'Asia/Kolkata';


-- =========================================================
-- 6. DATE FORMATTING
-- =========================================================

SELECT
    CURRENT_DATE() AS CURRENT_DATE,
    TO_CHAR(CURRENT_DATE(), 'DD/MON/YYYY') AS FORMATTED_DATE;


-- =========================================================
-- 7. TIMESTAMP FORMATTING
-- =========================================================

SELECT
    CURRENT_TIMESTAMP() AS CURRENT_TIMESTAMP,
    TO_CHAR(CURRENT_TIMESTAMP(), 'HH:MI:SS AM') AS FORMATTED_TIME;


-- =========================================================
-- 8. STRING TO DATE CONVERSION
-- =========================================================

-- Convert a string into a DATE

SELECT TO_DATE('08-30-2026', 'MM-DD-YYYY') AS CONVERTED_DATE;


-- =========================================================
-- 9. DATE TABLE
-- =========================================================

CREATE OR REPLACE TABLE T1 (
    D DATE
);

INSERT INTO T1 VALUES
('2026-08-30');

SELECT *
FROM T1;


-- Display date in a specific format

SELECT
    D,
    TO_CHAR(D, 'DD-MM-YYYY') AS FORMATTED_DATE
FROM T1;


-- =========================================================
-- 10. EMPLOYEE TABLE FOR STRING FUNCTION PRACTICE
-- =========================================================

CREATE OR REPLACE TABLE EMPLOYEE (
    EMP_ID NUMBER,
    EMP_NAME VARCHAR,
    EMAIL VARCHAR,
    DEPT VARCHAR
);

INSERT INTO EMPLOYEE VALUES
(101, 'john smith', 'john@example.com', 'IT'),
(102, 'RAVI KUMAR', 'ravi@example.com', 'HR'),
(103, '  SAI PRASAD  ', 'sai@example.com', 'IT'),
(104, 'anil kumar', 'anil@example.com', 'SALES');


-- View employee data

SELECT *
FROM EMPLOYEE;


-- =========================================================
-- 11. STRING CLEANING PRACTICE
-- =========================================================

-- Convert employee names to uppercase

SELECT
    EMP_ID,
    UPPER(EMP_NAME) AS EMP_NAME_UPPER
FROM EMPLOYEE;


-- Convert employee names to lowercase

SELECT
    EMP_ID,
    LOWER(EMP_NAME) AS EMP_NAME_LOWER
FROM EMPLOYEE;


-- Convert employee names to title case

SELECT
    EMP_ID,
    INITCAP(EMP_NAME) AS EMP_NAME_TITLE
FROM EMPLOYEE;


-- Remove leading and trailing spaces

SELECT
    EMP_ID,
    TRIM(EMP_NAME) AS CLEAN_NAME
FROM EMPLOYEE;


-- =========================================================
-- DAY 04 SUMMARY
-- =========================================================
-- Topics Covered:
--
-- 1. SELECT statements
-- 2. Arithmetic expressions
-- 3. UPPER()
-- 4. LOWER()
-- 5. INITCAP()
-- 6. REPLACE()
-- 7. TRIM()
-- 8. CURRENT_DATE()
-- 9. CURRENT_TIME()
-- 10. CURRENT_TIMESTAMP()
-- 11. CURRENT_SCHEMA()
-- 12. SHOW PARAMETERS
-- 13. ALTER SESSION
-- 14. TO_CHAR()
-- 15. TO_DATE()
-- 16. Date formatting
-- 17. Timestamp formatting
-- 18. Basic string cleaning
-- =========================================================
