-- practice

-- 1. get me all data from employees table
select * from EMPLOYEES;

-- 2. get me first_name, phone_number and salary from employees
select FIRST_NAME, PHONE_NUMBER, SALARY from EMPLOYEES;

-- 3. get me unique job_id from _____ table
select distinct JOB_ID from EMPLOYEES;

-- 4. get me all ST_CLERK first name from employee table
select FIRST_NAME, JOB_ID from EMPLOYEES
where JOB_ID = 'ST_CLERK';

-- 5. get me postal_code from JP,UK,CA
select COUNTRY_ID, POSTAL_CODE from LOCATIONS
where COUNTRY_ID = 'JP' or COUNTRY_ID = 'UK' or COUNTRY_ID = 'CA';

select COUNTRY_ID, POSTAL_CODE from LOCATIONS
where COUNTRY_ID in ('UK','JP','CA');

-- 6. get me city not in CH,US
SELECT CITY, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID NOT IN ('CH','US');

-- 7. get me job_title whose min_salary is more than 4000 and less than 9000
SELECT JOB_TITLE, MIN_SALARY FROM JOBS
WHERE MIN_SALARY BETWEEN 4000 AND 9000;

-- 8. get me null state_province in locations table
SELECT STATE_PROVINCE FROM LOCATIONS
WHERE STATE_PROVINCE IS NULL ;

-- 9. get me NOT NULL manager_id in departments table
SELECT MANAGER_ID FROM DEPARTMENTS
WHERE MANAGER_ID IS NOT NULL ;

-- 10. get me employee_id and start_date who starts in 2001
SELECT JOB_ID, HIRE_DATE FROM EMPLOYEES
WHERE HIRE_DATE LIKE '%2005';

-- 11. get me all employee first_name who works in some CLERK position
SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES
WHERE JOB_ID LIKE '%CLERK';

-- 12. get me email whose email is 6 letter and 4th letter of email is E
SELECT EMAIL FROM EMPLOYEES
WHERE EMAIL LIKE '___E__';

-- 13. get me last_name according to their hire_date
SELECT LAST_NAME,HIRE_DATE FROM EMPLOYEES
ORDER BY HIRE_DATE;

-- 15. get me the count of manager_id from departments
select count(MANAGER_ID) from EMPLOYEES;

-- 19. get me maximum salary of each department_id
select DEPARTMENT_ID, max(salary) from EMPLOYEES
group by DEPARTMENT_ID
order by max(SALARY);

-- 21. get me salary information( min, max, sum, avg) of each job_id
select JOB_ID, min(SALARY), max(SALARY), sum(SALARY), avg(SALARY) from EMPLOYEES
group by JOB_ID;

-- 23. get me department_id who has more than 10 employee
select DEPARTMENT_ID, count(FIRST_NAME) from EMPLOYEES
group by DEPARTMENT_ID
having count(FIRST_NAME) > 10;

-- 24. get me which job_id has average commission_pct over 20%
select JOB_ID, avg(COMMISSION_PCT) from EMPLOYEES
group by JOB_ID
having avg(COMMISSION_PCT) > 0.2;










