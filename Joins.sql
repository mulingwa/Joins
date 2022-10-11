--Select the names and job start dates of all employees who work for the department number 5.

SELECT F_NAME, L_NAME, START_DATE 
FROM EMPLOYEES E 
INNER JOIN JOB_HISTORY JH ON E.EMP_ID = JH.EMPL_ID 
WHERE DEP_ID = 5;

--Select the names, job start dates, and job titles of all employees who work for the department number 5.
SELECT F_NAME, L_NAME, START_DATE, JOB_TITLE
FROM EMPLOYEES E 
INNER JOIN JOB_HISTORY JH ON E.EMP_ID = JH.EMPL_ID
INNER JOIN  JOBS J ON JH.JOBS_ID = J.JOB_IDENT 
WHERE DEP_ID = 5;

--SELECT * FROM employees;
--Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select employee id, last name, department id and department name for all employees.
SELECT E.EMP_ID, E.L_NAME, D.DEPT_ID_DEP Dep_ID, DEP_NAME DEPT_NAME
FROM EMPLOYEES E 
LEFT JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP;

--Re-write the previous query but limit the result set to include only the rows for employees born before 1980.
SELECT E.EMP_ID, E.L_NAME, D.DEPT_ID_DEP Dep_ID, DEP_NAME DEPT_NAME
FROM EMPLOYEES E 
LEFT JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP
WHERE YEAR(B_DATE) < 1980;

--Re-write the previous query but have the result set include all the employees but department names for only the employees who were born before 1980.
SELECT E.EMP_ID, E.L_NAME, DEP_NAME DEPT_NAME
FROM EMPLOYEES E 
LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP
WHERE YEAR(B_DATE) < 1980;

--Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select the First name, Last name and Department name of all employees.
SELECT E.EMP_ID, E.L_NAME, DEP_NAME DEPT_NAME
FROM EMPLOYEES E 
FULL OUTER JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP;

--Re-write the previous query but have the result set include all employee names but department id and department names only for male employees.
SELECT E.EMP_ID, E.L_NAME, DEP_NAME DEPT_NAME
FROM EMPLOYEES E 
FULL OUTER JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP
WHERE E.SEX = 'M';