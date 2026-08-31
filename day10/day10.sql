create database mydb1;
create schema myschema1;
CREATE TABLE EMP (
    EMPNO  INT,
    ENAME  VARCHAR(20),
    JOB    VARCHAR(20),
    SAL    INT,
    DEPTNO INT
);


-- =========================================================
-- INSERT RECORDS
-- =========================================================

INSERT INTO EMP (EMPNO, ENAME, JOB, SAL, DEPTNO) VALUES
(1, 'A', 'CLERK',     1300, 10),
(2, 'B', 'MANAGER',   2450, 10),
(3, 'C', 'PRESIDENT', 5000, 10),
(4, 'D', 'CLERK',     1900, 20),
(5, 'E', 'ANALYST',   6000, 20),
(6, 'F', 'MANAGER',   2975, 20),
(7, 'G', 'CLERK',      950, 30),
(8, 'H', 'MANAGER',   2850, 30),
(9, 'I', 'SALESMAN',  5600, 30);
insert into emp values(10,'J','MANAGER',7000,10);

select * from emp;
select max(sal) ,min(sal),round(avg(sal),2),count(*),sum(sal) from emp;--aggregate columns
select empno,ename,sal from emp;--non aggregate columns
select max(sal),deptno,job from emp group by deptno,job order by deptno;


create table t(c number);

insert into t values(10);
insert into t values(20);
insert into t values(null);
insert into t values(10);

commit;

select *
from t;

select count(c) C1,
       count(distinct c) C2,
       count(1) C3,
       count(*) C4,
       count(null) C5
from t;

SELECT COUNT(*)  WHERE NULL = NULL;

SELECT COUNT(*)   WHERE NULL <> NULL;

SELECT COUNT(*)   WHERE NULL IS NULL;

SELECT COUNT(*)   WHERE NULL IS NOT NULL;





CREATE TABLE employee (
    ID NUMBER,
    FirstName VARCHAR2(30),
    MiddleName VARCHAR2(30),
    LastName VARCHAR2(30)
);

INSERT INTO employee VALUES (1, 'Rajendra', NULL, 'Gupta');
INSERT INTO employee VALUES (2, 'Mohan', 'K', 'Sharma');
INSERT INTO employee VALUES (3, 'Johan', 'L', 'Cruyff');
INSERT INTO employee VALUES (4, 'Shyam', 'Sunder', 'Agarwal');
INSERT INTO employee VALUES (5, 'Ranjith', 'M', 'Eswaran');

COMMIT;

SELECT * FROM employee;

SELECT COUNT(*) FROM employee;

SELECT COUNT(1) FROM employee;

SELECT COUNT(MiddleName) FROM employee;

SELECT COUNT(FirstName) FROM employee;


-- 1. COUNT(*)
SELECT COUNT(*);

-- 2. COUNT(0)
SELECT COUNT(0);

-- 3. COUNT(1)
SELECT COUNT(1);

-- 4. COUNT(-300)
SELECT COUNT(-300);

-- 5. COUNT('PRAVEEN')
SELECT COUNT('PRAVEEN');

-- 6. COUNT(NULL)
SELECT COUNT(NULL);

-- 7. COUNT(NULL) + 200
SELECT COUNT(NULL) + 200;

-- 8. COUNT(NULL + 10)
SELECT COUNT(NULL + 10);

-- 9. COUNT(NULL + 10) + 200
SELECT COUNT(NULL + 10) + 200;

CREATE OR REPLACE TABLE employee (
    ID NUMBER
);

INSERT INTO employee VALUES
(1),
(2),
(NULL),
(NULL),
(3),
(4),
(4),
(4);

SELECT *
FROM employee;

SELECT COUNT('Akhila') AS TOTAL_ROWS
FROM employee;

SELECT COUNT(ID) AS NON_NULL_IDS
FROM employee;

SELECT COUNT(DISTINCT ID) AS UNIQUE_IDS
FROM employee;
