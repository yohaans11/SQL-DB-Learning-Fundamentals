/*
INSERT Function
*/

INSERT INTO employee (employee_id, first_name, last_name, department_id)
VALUES (300, 'John', 'Smith', 3);
/* Insert new employee with empID, firstname, lastname and deptid */

SELECT * 
FROM EMPLOYEE
WHERE employee_id = 300;
/* Viewing the added value */

INSERT INTO employee (employee_id, first_name, last_name, department_id, salary, manager_id, hire_date)
VALUES (301, 'Marge', 'Abbott', 2, 31000, 51, '04-Jan-2017');
/* Insert new employee with all details */

SELECT * 
FROM EMPLOYEE
WHERE employee_id = 301;
/* Viewing the added value */

INSERT ALL
INTO employee (employee_id, first_name, last_name, department_id) VALUES (302, 'Matt', 'Johnson', 1)
INTO employee (employee_id, first_name, last_name, department_id) VALUES (303, 'Mark', 'Spencer', 4)
INTO employee (employee_id, first_name, last_name, department_id) VALUES (304, 'Simone', 'Fletcher', 3)
INTO employee (employee_id, first_name, last_name, department_id) VALUES (305, 'Alison', 'Smith', 8)
SELECT * 
FROM dual;

SELECT * 
FROM EMPLOYEE
WHERE employee_id IN(303,304,305);




/*
Inserting data from another table
*/

SELECT *
FROM customer
WHERE address_state IN ('NY','OR');

SELECT first_name, last_name
FROM customer
WHERE address_state IN ('NY','OR');

INSERT INTO employee(first_name, last_name)
SELECT first_name, last_name
FROM customer
WHERE address_state IN ('NY','OR'); 


SELECT first_name, last_name
FROM customer
WHERE customer_id = 1;

INSERT INTO employee(employee_id, first_name, last_name)
SELECT 250, first_name, last_name
FROM customer
WHERE customer_id = 1;


SELECT first_name, last_name
FROM customer
WHERE customer_id = 250;







/*
UPDATE Function
*/

SELECT * 
FROM employee
WHERE employee_id = 85;

UPDATE employee
SET salary = salary + 10000
WHERE employee_id = 85;
/* Updating with SET and addition */

SELECT * 
FROM employee
WHERE employee_id = 85; 

UPDATE employee
SET salary = 80000
WHERE employee_id = 85;
/* Updating with SET */

SELECT * 
FROM employee
WHERE employee_id = 85; 


SELECT * 
FROM employee
WHERE employee_id IN (105, 59, 16); 

UPDATE employee
SET manager_id = 30,
salary = salary + 5000
WHERE employee_id IN (105, 59, 16); 
/* Updating with SET for multiple rows */

SELECT * 
FROM employee
WHERE employee_id IN (105, 59, 16); 







/*
DELETING data
*/

SELECT * 
FROM employee;

DELETE FROM employee
WHERE employee_id = 250;
/* Deleting using a WHERE clause */

SELECT * 
FROM employee
WHERE employee_id = 250;


SELECT * 
FROM employee
WHERE last_name = 'Larson';

DELETE FROM employee
WHERE last_name = 'Larson';
/* Deleting multiple rows using a WHERE clause */





