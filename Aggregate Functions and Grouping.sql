/*
COUNTING Data
*/

SELECT COUNT (*)
FROM employee;

SELECT COUNT (*)
FROM department;

SELECT COUNT (*)
FROM customer;

SELECT COUNT (*)
FROM customer_order;




/*
Using Count in Other Ways
*/

SELECT * 
FROM employee
WHERE first_name = 'Barbara';

SELECT COUNT(*) 
FROM employee
WHERE first_name = 'Barbara';


SELECT COUNT(salary)
FROM employee; 

SELECT * 
FROM employee
WHERE salary IS NULL;

SELECT * 
FROM employee
WHERE salary IS NOT NULL;


SELECT DISTINCT last_name
FROM employee;

SELECT COUNT(DISTINCT last_name)
FROM employee;

SELECT DISTINCT COUNT (last_name)
FROM employee;





/*
Counting Data Within Groups with GROUP BY
*/

SELECT last_name, Count(*)
FROM employee
GROUP BY last_name;

SELECT *
FROM product;

SELECT department_id, COUNT(*)
FROM product
GROUP BY department_id;




/*
GROUP BY with WHERE and ORDER BY
*/

SELECT last_name, Count(*)
FROM employee
GROUP BY last_name;

SELECT last_name, Count(*)
FROM employee
WHERE last_name LIKE 'B%'
GROUP BY last_name;

SELECT salary, Count(*)
FROM employee
WHERE salary > 100000
GROUP BY salary;

SELECT last_name, Count(*)
FROM employee
WHERE last_name LIKE 'B%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT salary, Count(*)
FROM employee
WHERE salary > 100000
GROUP BY salary
ORDER BY COUNT(*) DESC;





/*
GROUP BY with multiple columns
*/

SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name,department_id;

SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name,department_id
ORDER BY last_name;

SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name,department_id
ORDER BY COUNT (*) DESC;

SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
ORDER BY first_name, last_name;

SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;

SELECT first_name, last_name,department_id, COUNT(*)
FROM employee
GROUP BY first_name, last_name, department_id
ORDER BY COUNT(*) DESC;





/*
GROUP BY with HAVING
*/

SELECT last_name, Count(*)
FROM employee
GROUP BY last_name;

SELECT last_name, Count(*)
FROM employee
GROUP BY last_name
HAVING COUNT(*) >1;

SELECT first_name, last_name, Count(*)
FROM employee
GROUP BY first_name, last_name
HAVING COUNT(*) >1;





/*
SUM Function
*/

SELECT SUM(salary)
FROM employee;

SELECT SUM(price)
FROM product;

SELECT department_id, SUM(salary)
FROM employee
GROUP BY department_id;

SELECT department_id, SUM(salary)
FROM employee
GROUP BY department_id
ORDER BY SUM(salary) DESC;






/*
MAX and MIN Function
*/

SELECT MAX(salary)
FROM employee;

SELECT MIN(salary)
FROM employee;

SELECT MAX(salary),MIN(salary)
FROM employee;

SELECT department_id, MAX(salary)
FROM employee
GROUP BY department_id;

SELECT department_id, MIN(salary)
FROM employee
GROUP BY department_id;

SELECT department_id, MAX(salary),MIN(salary)
FROM employee
GROUP BY department_id;

SELECT MIN(hire_date)
FROM employee;

SELECT MAX(hire_date)
FROM employee;

SELECT MIN(last_name)
FROM employee;

SELECT MAX(last_name)
FROM employee;





/*
AVG Function
*/

SELECT AVG(salary)
FROM employee;

SELECT department_id, AVG(salary)
FROM employee
GROUP BY department_id
ORDER BY AVG(salary);

