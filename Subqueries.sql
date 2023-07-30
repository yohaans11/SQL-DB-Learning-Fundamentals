/*
SUBQUERIES - Query within another query
*/

/*
Inner Query - Sub Query
Outer Query - Main Query
*/

/*
Single ROW Subquery
*/

SELECT AVG(salary)
FROM employee;

SELECT employee_id,
first_name,
last_name,
salary
FROM employee
WHERE salary >(
    SELECT AVG(salary)
    FROM employee
);
/* To view the employee names who has the salary more than average salary */



/*
Multi ROW Subquery
*/

SELECT department_id,
department_name
FROM department
WHERE department_name IN ('Sales', 'Finance');

SELECT employee_id,
first_name,
last_name,
department_id
FROM employee
WHERE department_id IN (
    SELECT 
    department_id
    FROM department
    WHERE department_name IN ('Sales', 'Finance')
);
/* To view employees in different departments */