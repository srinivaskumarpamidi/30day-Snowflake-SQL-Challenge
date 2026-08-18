-- ============================================================
-- 30-Day Snowflake SQL Challenge
-- Day 6: CTAS & Set Operators


-- ============================================================
-- 1. Create Source Table
-- ============================================================

CREATE OR REPLACE TABLE STUDENTS (
    STUDENT_ID NUMBER,
    FACULTY VARCHAR,
    COURSE VARCHAR
);


-- ============================================================
-- 2. Insert Sample Data
-- ============================================================

INSERT INTO STUDENTS VALUES
    (1, 'Faculty_A', 'Java'),
    (2, 'Faculty_B', 'C++'),
    (3, 'Faculty_A', 'Java'),
    (4, 'Faculty_C', 'C');


-- Display source table
SELECT *
FROM STUDENTS;


-- ============================================================
-- 3. Create a Copy Using CTAS
-- CREATE TABLE AS SELECT
-- ============================================================

CREATE OR REPLACE TABLE STUDENTS_COPY AS
SELECT *
FROM STUDENTS;

SELECT *
FROM STUDENTS_COPY;


-- ============================================================
-- 4. Create an Empty Table Using CTAS
-- WHERE 1 = 2 returns no rows
-- but copies the table structure
-- ============================================================

CREATE OR REPLACE TABLE STUDENTS_EMPTY AS
SELECT *
FROM STUDENTS
WHERE 1 = 2;

SELECT *
FROM STUDENTS_EMPTY;


-- ============================================================
-- 5. Create Second Table for Set Operators
-- ============================================================

CREATE OR REPLACE TABLE STUDENTS_NEW (
    STUDENT_ID NUMBER,
    FACULTY VARCHAR,
    COURSE VARCHAR
);


-- Insert sample data
INSERT INTO STUDENTS_NEW VALUES
    (1, 'Faculty_A', 'Java'),
    (3, 'Faculty_D', 'Python'),
    (4, 'Faculty_A', 'Java'),
    (5, 'Faculty_E', 'Python');


-- Display second table
SELECT *
FROM STUDENTS_NEW;


-- ============================================================
-- 6. UNION
-- Combines results and removes duplicates
-- ============================================================

SELECT FACULTY
FROM STUDENTS

UNION

SELECT FACULTY
FROM STUDENTS_NEW;


-- ============================================================
-- 7. UNION ALL
-- Combines results and keeps duplicates
-- ============================================================

SELECT FACULTY
FROM STUDENTS

UNION ALL

SELECT FACULTY
FROM STUDENTS_NEW;


-- ============================================================
-- 8. INTERSECT
-- Returns common values from both tables
-- ============================================================

SELECT FACULTY
FROM STUDENTS

INTERSECT

SELECT FACULTY
FROM STUDENTS_NEW;


-- ============================================================
-- 9. MINUS
-- Returns values present in first query
-- but not in second query
-- ============================================================

SELECT FACULTY
FROM STUDENTS

MINUS

SELECT FACULTY
FROM STUDENTS_NEW;


-- ============================================================
-- 10. Reverse MINUS
-- Returns values present in STUDENTS_NEW
-- but not in STUDENTS
-- ============================================================

SELECT FACULTY
FROM STUDENTS_NEW

MINUS

SELECT FACULTY
FROM STUDENTS;


-- ============================================================
-- Day 6 Completed
-- Topics:
-- 1. CREATE TABLE AS SELECT (CTAS)
-- 2. Creating empty tables using WHERE 1 = 2
-- 3. UNION
-- 4. UNION ALL
-- 5. INTERSECT
-- 6. MINUS
-- ============================================================
