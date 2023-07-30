/*
TABLE ALIASES
*/

SELECT employee_id, first_name, last_name
FROM employee;

/*Adding table aliase*/
SELECT employee_id, first_name, last_name
FROM employee e;

/*Calling columns using the table alias name*/
SELECT employee_id, first_name, last_name, e.salary
FROM employee e
WHERE e.salary <30000;




/*
COLUMN ALIASES
*/

