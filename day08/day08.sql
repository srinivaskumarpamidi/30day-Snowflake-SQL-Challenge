-- ============================================================
-- 30-Day Snowflake SQL Challenge
-- Day 8: NULL Handling Functions
-- Topics: COALESCE, NVL2, NVL
-- ============================================================


-- ============================================================
-- 1. COALESCE()
-- Returns the first non-NULL value
-- ============================================================

CREATE OR REPLACE TABLE emp1 (
    id INT,
    f_name VARCHAR,
    m_name VARCHAR,
    l_name VARCHAR
);

INSERT INTO emp1 VALUES
(1, 'sam', NULL, NULL),
(2, NULL, 'todd', 'tanzan'),
(3, NULL, NULL, 'sara'),
(4, 'ben', 'parker', NULL),
(5, 'james', 'nick', 'nancy');

SELECT
    id,
    COALESCE(f_name, m_name, l_name) AS first_available_name
FROM emp1;


-- ============================================================
-- 2. NVL2()
-- If service_code is NOT NULL → service_code || '|1'
-- If service_code IS NULL → '1'
-- ============================================================

CREATE OR REPLACE TABLE sss2 (
    sr_no INT,
    service_code STRING
);

INSERT INTO sss2 VALUES
(1, NULL),
(2, '3'),
(3, '1|2'),
(4, '5'),
(5, '4'),
(6, '2');

SELECT
    sr_no,
    NVL2(
        service_code,
        service_code || '|1',
        '1'
    ) AS service_result
FROM sss2;


-- ============================================================
-- 3. NVL()
-- Replaces NULL with a specified value
-- ============================================================

CREATE OR REPLACE TABLE emp1 (
    str VARCHAR
);

INSERT INTO emp1 VALUES
('A'),
('B'),
(NULL),
('C'),
(NULL),
('D');

SELECT
    NVL(str, 'na') AS updated_value
FROM emp1;
