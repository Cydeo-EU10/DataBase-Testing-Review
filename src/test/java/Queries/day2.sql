-- in statement
select FIRST_NAME
from EMPLOYEES
where EMPLOYEE_ID = 107
   or EMPLOYEE_ID = 102
   or EMPLOYEE_ID = 103
   or EMPLOYEE_ID = 104;

select FIRST_NAME
from EMPLOYEES
where EMPLOYEE_ID in (107, 102, 103, 104);

select CITY, COUNTRY_ID
from LOCATIONS
where COUNTRY_ID in ('UK', 'US');

SELECT CITY, COUNTRY_ID
FROM LOCATIONS
WHERE COUNTRY_ID NOT IN ('UK', 'US');

-- ORDER BY
SELECT SALARY
from EMPLOYEES;

select SALARY
from EMPLOYEES
order by SALARY desc;

select SALARY
from EMPLOYEES
order by SALARY asc;

select SALARY
from EMPLOYEES
order by SALARY;

select FIRST_NAME
from EMPLOYEES
order by SALARY;

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
order by FIRST_NAME;

select FIRST_NAME, LAST_NAME
from EMPLOYEES
order by FIRST_NAME asc, LAST_NAME desc;

select FIRST_NAME, SALARY
from EMPLOYEES
order by FIRST_NAME asc, SALARY desc;

-- like

select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like 'Da%';

select LAST_NAME
from EMPLOYEES
where LAST_NAME like '%e';

select LAST_NAME
from EMPLOYEES
where LAST_NAME like '_____';

select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '__a__';

select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like 'D__%';

SELECT CITY, COUNTRY_ID
FROM LOCATIONS
WHERE COUNTRY_ID like 'U%';

--count
select COUNT(JOB_ID)
from JOB_HISTORY;

select JOB_ID
from JOB_HISTORY;

select count(*)
from LOCATIONS;

select *
from LOCATIONS;

select count(POSTAL_CODE)
from LOCATIONS;

select count(COUNTRY_ID)
from LOCATIONS;

select count(distinct COUNTRY_ID)
from LOCATIONS;

select Distinct COUNTRY_ID
from LOCATIONS;

-- aggregate functions
-- min
select min(SALARY)
from EMPLOYEES;
select min(FIRST_NAME)
from EMPLOYEES;
select FIRST_NAME
from EMPLOYEES
order by FIRST_NAME;

-- max
select max(SALARY)
from EMPLOYEES;
select max(LAST_NAME)
from EMPLOYEES;
select max(HIRE_DATE)
from EMPLOYEES;
select HIRE_DATE
from EMPLOYEES
order by HIRE_DATE;


--sum
select sum(SALARY)
from EMPLOYEES;

select sum(SALARY)
from EMPLOYEES
where JOB_ID = 'IT_PROG';

-- avg
select avg(SALARY)
from EMPLOYEES;
select round(avg(SALARY))
from EMPLOYEES;
select round(avg(SALARY), 2)
from EMPLOYEES;
select round(avg(SALARY), 0)
from EMPLOYEES;

-- group by
select JOB_ID
from EMPLOYEES;

select JOB_ID
from EMPLOYEES
group by JOB_ID;

select JOB_ID, count(FIRST_NAME)
from EMPLOYEES
group by JOB_ID;

select JOB_ID, sum(SALARY)
from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 8000;

select DEPARTMENT_ID, count(FIRST_NAME)
from EMPLOYEES
group by DEPARTMENT_ID
order by count(FIRST_NAME);

-- difference between having and where
-- where is put condition before group, applies to individual rows
-- having is put condition after group, applies to grouped rows

-- row number
select FIRST_NAME
from EMPLOYEES
where ROWNUM <= 10;

-- subquery
select avg(SALARY)
from EMPLOYEES;

select FIRST_NAME, SALARY
from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);

select FIRST_NAME, SALARY
from EMPLOYEES
where SALARY < (select max(salary) from EMPLOYEES);

select max(salary)
from EMPLOYEES
where SALARY < (select max(salary) from EMPLOYEES);

select SALARY
from (select salary from employees order by salary desc)
where ROWNUM < 11;


-- string fucntions
-- concatination
select FIRST_NAME || ' ' || LAST_NAME
from EMPLOYEES;

-- lower or upper
select FIRST_NAME
from EMPLOYEES;
select upper(FIRST_NAME)
from EMPLOYEES;
select lower(LAST_NAME)
from EMPLOYEES;

-- lenght
select FIRST_NAME, length(FIRST_NAME)
from EMPLOYEES
where length(FIRST_NAME) < 6;

-- substr
select LAST_NAME, substr(LAST_NAME, 1, 3)
from EMPLOYEES;
select CITY, substr(CITY, 1, 2)
from LOCATIONS;

-- intcap
select initcap(lower(FIRST_NAME))
from EMPLOYEES;

-- view
create view email as
select FIRST_NAME || '.' || LAST_NAME || '@gmail.com' as fullEmail
from EMPLOYEES;

select FIRST_NAME || '.' || LAST_NAME || '@gmail.com'
from EMPLOYEES;


-- join
-- inner join
select Jobs.JOB_ID, START_DATE, MAX_SALARY
from JOBS
         inner join JOB_HISTORY on JOBS.JOB_ID = JOB_HISTORY.JOB_ID;

-- left outer join
select Jobs.JOB_ID, START_DATE, MAX_SALARY
from JOBS
         left outer join JOB_HISTORY on JOBS.JOB_ID = JOB_HISTORY.JOB_ID;

-- join with where
select Jobs.JOB_ID, START_DATE, MAX_SALARY
from JOBS
         left outer join JOB_HISTORY on JOBS.JOB_ID = JOB_HISTORY.JOB_ID
where START_DATE is not null;


-- right outer join
select Jobs.JOB_ID, START_DATE, MAX_SALARY
from JOBS
         right outer join JOB_HISTORY on JOBS.JOB_ID = JOB_HISTORY.JOB_ID;


-- full outer join
select Jobs.JOB_ID, START_DATE, MAX_SALARY
from JOBS
         full outer join JOB_HISTORY on JOBS.JOB_ID = JOB_HISTORY.JOB_ID;

-- self join
select e1.EMPLOYEE_ID, e1.FIRST_NAME, e1.EMAIL, e2.MANAGER_ID from EMPLOYEES e1
join EMPLOYEES e2
on e1.EMPLOYEE_ID = e2.MANAGER_ID;


-- DDL
-- creating table
