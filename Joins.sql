SELECT employee_id, 
first_name, 
last_name,
salary,
hire_date,
department_name
FROM employee, department
WHERE salary > 50000
AND hire_date > '01-JAN-2012';
