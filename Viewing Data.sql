/*
SELECT FUNCTION
*/

SELECT employee_id, first_name, last_name,department_id FROM employee;

SELECT department_id, department_name FROM department;


/*
Filtering with WHERE
*/

SELECT employee_id,first_name,last_name
FROM employee
WHERE first_name = 'Jessica';

SELECT employee_id,first_name,last_name
FROM employee
WHERE last_name = 'Smith';

SELECT employee_id,first_name,last_name
FROM employee
WHERE last_name = 'Jones';



/*
Comparison Operators
*/

SELECT employee_id,first_name,last_name
FROM employee
WHERE last_name <> 'Jones';

SELECT employee_id,first_name,last_name
FROM employee
WHERE employee_id <5;

SELECT employee_id,first_name,last_name
FROM employee
WHERE employee_id >=5;

SELECT employee_id,first_name,last_name
FROM employee
WHERE employee_id <= 8;


/*
Filtering on Partial Values with LIKE
*/

/* '%' is for multiple characters and '_' is for a single character*/

SELECT employee_id,first_name,last_name
FROM employee
WHERE last_name LIKE 'Bu%';

SELECT employee_id,first_name,last_name
FROM employee
WHERE last_name LIKE '%e%';

SELECT employee_id,first_name,last_name
FROM employee
WHERE first_name LIKE 'Ann_';



/*
Filtering on DATE Values
*/

/* 
Default Date format = 'dd-mmm-yyyy'
How to find the Date format which is running in the system
SELECT value
FROM SYS.NLS_DATABASE_PARAMETERS
WHERE parameter = 'NLS_DATE_FORMAT';
*/

SELECT * 
FROM employee
WHERE hire_date = '03-OCT-2010';

SELECT value
FROM SYS.NLS_DATABASE_PARAMETERS
WHERE parameter = 'NLS_DATE_FORMAT';

SELECT * 
FROM employee
WHERE hire_date < '01-OCT-2010';

SELECT * 
FROM employee
WHERE hire_date > '01-JAN-2010';

SELECT * 
FROM employee
WHERE hire_date >= '23-JAN-2012';



/*
Using TWO FILTERS
*/

/* Use of AND and OR Condition */

SELECT *
FROM employee
WHERE first_name = 'John' OR last_name = 'Foster';

SELECT *
FROM employee
WHERE first_name = 'Justin' AND last_name = 'Little';


/*
Using more than two FILTERS
*/

/*
Use of AND and OR keywords with Brackets
*/

SELECT * FROM employee
WHERE first_name = 'Barbara' 
AND hire_date <'01-DEC-2014'
AND salary < 70000; 

SELECT * FROM employee
WHERE first_name = 'Barbara' 
AND hire_date <'01-DEC-2014'
OR salary < 70000; 

SELECT * FROM employee
WHERE (first_name = 'Barbara' 
AND hire_date <'01-DEC-2014')
OR salary < 70000; 



/* 
NULL value 
*/

/* 
NULL should always come after IS or IS NOT instead of '=' and '!='
*/

SELECT * 
FROM employee
WHERE salary IS NULL;

SELECT * 
FROM employee
WHERE salary IS NOT NULL;

/* 
Getting UNIQUE Records with DISTINCT
*/

/* 
Allows to get the unique values from the selected criteria
*/

Select last_name
From employee;

Select first_name, last_name
From employee;

SELECT DISTINCT last_name
FROM employee;

SELECT DISTINCT last_name, department_id
FROM employee;

SELECT DISTINCT first_name, last_name
FROM employee
WHERE department_id = 5;
