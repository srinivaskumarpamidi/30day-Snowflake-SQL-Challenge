-- ============================================
-- DAY 2 — Snowflake Functions, CASE & Masking
-- ============================================


-- 1. Basic SELECT
SELECT 9000366569;


-- 2. RIGHT() function
SELECT RIGHT('9000366569', 7);


-- 3. Selecting multiple string values
SELECT 'parvathaneni',
       'karunakar',
       'naidu';


-- 4. String concatenation using ||
SELECT 'parvathaneni' || ' ' ||
       'karunakar' || ' ' ||
       'naidu';


-- 5. Masking a mobile number using RIGHT()
SELECT '*******' || RIGHT('9000366569', 3) AS mobile_number;


-- 6. Snowflake context functions
SELECT CURRENT_USER(),
       CURRENT_DATE(),
       CURRENT_ROLE();


-- ============================================
-- 7. CASE Expression
-- ============================================

CREATE OR REPLACE TABLE student (
    name STRING,
    marks NUMBER
);


-- Insert student records
INSERT INTO student VALUES
('jahnavi', 90),
('amulya', 97),
('Harika', 30);


-- Display student records
SELECT *
FROM student;


-- Categorize students based on marks
SELECT
    name,
    marks,
    CASE
        WHEN marks <= 35 THEN 'FAIL'
        ELSE 'PASS'
    END AS RESULT
FROM student;


-- ============================================
-- 8. Creating Employee Table
-- ============================================

CREATE OR REPLACE TABLE employee (
    id INT,
    name STRING,
    phone STRING
);


-- Insert employee records
INSERT INTO employee VALUES
(1, 'Ravi', '9876543210'),
(2, 'Suresh', '9123456789'),
(3, 'Anil', '9988776655');


-- Display employee data
SELECT *
FROM employee;


-- ============================================
-- 9. Creating a Masking Policy
-- ============================================

CREATE OR REPLACE MASKING POLICY phone_mask
AS (phone_value STRING)
RETURNS STRING ->
    CASE
        WHEN CURRENT_ROLE() = 'HR_ROLE'
            THEN phone_value
        ELSE
            'XXXXXX' || RIGHT(phone_value, 4)
    END;


-- ============================================
-- 10. Apply Masking Policy to PHONE column
-- ============================================

ALTER TABLE employee
MODIFY COLUMN phone
SET MASKING POLICY phone_mask;


-- Test the masking policy
SELECT *
FROM employee;


-- ============================================
-- 11. Current Schema
-- ============================================

SELECT CURRENT_SCHEMA();


-- ============================================
-- 12. Create HR Role
-- ============================================

CREATE ROLE hr_role;


-- ============================================
-- 13. Grant Required Privileges
-- ============================================
-- Replace the following placeholders with your
-- actual Snowflake database and schema names
-- when running this in your own environment.

GRANT USAGE ON DATABASE <DATABASE_NAME>
TO ROLE hr_role;

GRANT USAGE ON SCHEMA <DATABASE_NAME>.<SCHEMA_NAME>
TO ROLE hr_role;

GRANT SELECT ON TABLE <DATABASE_NAME>.<SCHEMA_NAME>.employee
TO ROLE hr_role;


-- ============================================
-- 14. Check Current User
-- ============================================

SELECT CURRENT_USER();


-- ============================================
-- 15. Grant HR Role to a User
-- ============================================
-- Replace <USERNAME> with your Snowflake username
-- when running this command.

GRANT ROLE hr_role
TO USER <USERNAME>;


-- ============================================
-- 16. Switch to HR Role
-- ============================================

USE ROLE hr_role;


-- Test employee data after switching role
SELECT *
FROM employee;
