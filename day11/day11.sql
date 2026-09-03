-- 1. Display all employees whose salary is greater than 5000.
SELECT *
FROM EMP
WHERE SAL > 5000;


-- 2. Display employees working in department 20.
SELECT *
FROM EMP
WHERE DEPTNO = 20;


-- 3. Display employees whose salary is between 4000 and 8000.
SELECT *
FROM EMP
WHERE SAL BETWEEN 4000 AND 8000;


-- 4. Display SALESMAN employees whose salary is greater than 4500.
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND SAL > 4500;


-- 5. Display employees who do not receive commission.
SELECT *
FROM EMP
WHERE COMM IS NULL;


-- 6. Display employees hired after 01-JAN-2020
--    and whose salary is greater than 4000.
SELECT *
FROM EMP
WHERE HIREDATE > '2020-01-01'
  AND SAL > 4000;


-- 7. Display employees from departments 10 and 30
--    whose salary is greater than 3000.
SELECT *
FROM EMP
WHERE DEPTNO IN (10, 30)
  AND SAL > 3000;


-- 8. Display all employees in descending order of salary.
SELECT *
FROM EMP
ORDER BY SAL DESC;


-- 9. Find the total salary for each department.
SELECT DEPTNO, SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO;


-- 10. Find the average salary for each department.
SELECT DEPTNO, AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY DEPTNO;


-- 11. Find the highest salary in each department.
SELECT DEPTNO, MAX(SAL) AS HIGHEST_SALARY
FROM EMP
GROUP BY DEPTNO;


-- 12. Find the lowest salary in each department.
SELECT DEPTNO, MIN(SAL) AS LOWEST_SALARY
FROM EMP
GROUP BY DEPTNO;


-- 13. Find the number of employees in each department.
SELECT DEPTNO, COUNT(*) AS EMP_COUNT
FROM EMP
GROUP BY DEPTNO;


-- 14. Find the total salary for each job.
SELECT JOB, SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY JOB;


-- 15. Find the average salary for each job
--     and display highest average to lowest.
SELECT JOB, AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY JOB
ORDER BY AVG_SALARY DESC;


-- 16. Find the total commission received by employees in each department.
SELECT DEPTNO, SUM(COMM) AS TOTAL_COMMISSION
FROM EMP
GROUP BY DEPTNO;


-- 17. Display departments having more than 3 employees.
SELECT DEPTNO, COUNT(*) AS EMP_COUNT
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 3;


-- 18. Display departments whose total salary is greater than 15000.
SELECT DEPTNO, SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) > 15000;


-- 19. Display departments whose average salary is greater than 6000.
SELECT DEPTNO, AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 6000;


-- 20. Display jobs having at least 2 employees.
SELECT JOB, COUNT(*) AS EMP_COUNT
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 2;


-- 21. Display jobs whose highest salary is greater than 6000.
SELECT JOB, MAX(SAL) AS HIGHEST_SALARY
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 6000;


-- 22. Display departments whose lowest salary is less than 3500.
SELECT DEPTNO, MIN(SAL) AS LOWEST_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING MIN(SAL) < 3500;


-- 23. Find department-wise total salary and display only
--     departments where total salary is between 15000 and 25000.
SELECT DEPTNO, SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) BETWEEN 15000 AND 25000;


-- 24. Find department-wise total salary for employees
--     whose salary is greater than 4000.
SELECT DEPTNO, SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE SAL > 4000
GROUP BY DEPTNO;


-- 25. Find department-wise employee count for employees
--     whose salary is greater than 3000.
--     Display only departments having more than 2 employees.
SELECT DEPTNO, COUNT(*) AS EMP_COUNT
FROM EMP
WHERE SAL > 3000
GROUP BY DEPTNO
HAVING COUNT(*) > 2;


-- 26. Find job-wise average salary for employees working
--     in departments 10 and 20.
--     Display only jobs whose average salary is greater than 5000.
SELECT JOB, AVG(SAL) AS AVG_SALARY
FROM EMP
WHERE DEPTNO IN (10, 20)
GROUP BY JOB
HAVING AVG(SAL) > 5000;


-- 27. Find department-wise highest salary for employees
--     hired after 01-JAN-2019.
--     Display only departments whose highest salary is greater than 6000.
SELECT DEPTNO, MAX(SAL) AS HIGHEST_SALARY
FROM EMP
WHERE HIREDATE > '2019-01-01'
GROUP BY DEPTNO
HAVING MAX(SAL) > 6000;


-- 28. Find department-wise total commission for SALESMAN employees.
--     Display only departments whose total commission is greater than 500.
SELECT DEPTNO, SUM(COMM) AS TOTAL_COMMISSION
FROM EMP
WHERE JOB = 'SALESMAN'
GROUP BY DEPTNO
HAVING SUM(COMM) > 500;


-- 29. Display employee name, salary and salary level.
SELECT ENAME, SAL,
       CASE
           WHEN SAL >= 8000 THEN 'HIGH'
           WHEN SAL >= 5000 THEN 'MEDIUM'
           ELSE 'LOW'
       END AS SALARY_LEVEL
FROM EMP;


-- 30. Display employee name, job and job category.
SELECT ENAME, JOB,
       CASE
           WHEN JOB = 'PRESIDENT' THEN 'TOP MANAGEMENT'
           WHEN JOB = 'MANAGER' THEN 'MANAGEMENT'
           WHEN JOB = 'ANALYST' THEN 'TECHNICAL'
           ELSE 'STAFF'
       END AS JOB_CATEGORY
FROM EMP;


-- 31. Display employee name, department number and department category.
SELECT ENAME, DEPTNO,
       CASE
           WHEN DEPTNO = 10 THEN 'A'
           WHEN DEPTNO = 20 THEN 'B'
           WHEN DEPTNO = 30 THEN 'C'
       END AS DEPT_CATEGORY
FROM EMP;


-- 32. Create salary categories:
--     >=7000 HIGH
--     4000-6999 MEDIUM
--     <4000 LOW
--     Find number of employees in each category.
SELECT
    CASE
        WHEN SAL >= 7000 THEN 'HIGH'
        WHEN SAL BETWEEN 4000 AND 6999 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS SALARY_CATEGORY,
    COUNT(*) AS EMP_COUNT
FROM EMP
GROUP BY
    CASE
        WHEN SAL >= 7000 THEN 'HIGH'
        WHEN SAL BETWEEN 4000 AND 6999 THEN 'MEDIUM'
        ELSE 'LOW'
    END
ORDER BY EMP_COUNT DESC;


-- 33. Classify employees and find average salary for each category.
--     Display categories whose average salary is greater than 4500.
SELECT
    CASE
        WHEN SAL >= 7000 THEN 'HIGH'
        WHEN SAL >= 4000 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS SALARY_CATEGORY,
    AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY
    CASE
        WHEN SAL >= 7000 THEN 'HIGH'
        WHEN SAL >= 4000 THEN 'MEDIUM'
        ELSE 'LOW'
    END
HAVING AVG(SAL) > 4500
ORDER BY AVG_SALARY DESC;


-- 34. Classify departments:
--     10 = FINANCE
--     20 = SALES
--     30 = OPERATIONS
--     Display category, employee count and total salary.
SELECT
    CASE
        WHEN DEPTNO = 10 THEN 'FINANCE'
        WHEN DEPTNO = 20 THEN 'SALES'
        WHEN DEPTNO = 30 THEN 'OPERATIONS'
    END AS DEPT_CATEGORY,
    COUNT(*) AS EMP_COUNT,
    SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY
    CASE
        WHEN DEPTNO = 10 THEN 'FINANCE'
        WHEN DEPTNO = 20 THEN 'SALES'
        WHEN DEPTNO = 30 THEN 'OPERATIONS'
    END
HAVING COUNT(*) > 2
ORDER BY TOTAL_SALARY DESC;


-- 35. Consider employees whose salary is greater than 3000.
--     Categories:
--     >=7000 HIGH
--     >=5000 MEDIUM
--     <5000 LOW
--     Display department, category, count, total, average and maximum.
--     Count >=2 and average >4500.
SELECT
    DEPTNO,
    CASE
        WHEN SAL >= 7000 THEN 'HIGH'
        WHEN SAL >= 5000 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS SALARY_CATEGORY,
    COUNT(*) AS EMP_COUNT,
    SUM(SAL) AS TOTAL_SALARY,
    AVG(SAL) AS AVG_SALARY,
    MAX(SAL) AS MAX_SALARY
FROM EMP
WHERE SAL > 3000
GROUP BY
    DEPTNO,
    CASE
        WHEN SAL >= 7000 THEN 'HIGH'
        WHEN SAL >= 5000 THEN 'MEDIUM'
        ELSE 'LOW'
    END
HAVING COUNT(*) >= 2
   AND AVG(SAL) > 4500
ORDER BY TOTAL_SALARY DESC;
