/*
STRING Functions
*/

/* INSTR (in string) - Looks for a specific character within a larger string 
   We can use INSTR to check if a character exists in the given data */
   
   
SELECT customer_id,
first_name,
last_name,
email_address
FROM customer;

SELECT customer_id,
first_name,
last_name,
email_address,
INSTR(email_address, '@')
FROM customer;
/* shows the character number of '@' */

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@')
FROM customer;

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
LENGTH(address_state)
FROM customer;
/* Length shows the number of character in a value/data */

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
LENGTH(address_state)
FROM customer
WHERE INSTR(email_address, '@') > 0
AND LENGTH(address_state) = 2;
/* INSTR and LENGTH with WHERE Clause */

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
LENGTH(address_state)
FROM customer
WHERE INSTR(email_address, '@') > 0
AND LENGTH(address_state) = 2
ORDER BY LENGTH(email_address) DESC;
/* INSTR and LENGTH with WHERE and ORDER BY Clause to show the email addresses in DESC order */




/* 
NESTING FUNCTIONS WITHIN OTHER FUNCTIONS
*/

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@'), 100)
FROM customer;
/* To view the characters including and after the '@' symbol in the email ID with the max length range of 100 */  

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@')+1, 100)
FROM customer;
/* To view the characters after the '@' symbol in the email ID with the max length range of 100 */  

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@')+1, 100) AS email_domain
FROM customer;
/* To view the characters after the '@' symbol in the email ID with the max length range of 100 and renaming the column*/  

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@')+1, LENGTH(email_address)) AS email_domain
FROM customer;
/* To view the characters after the '@' symbol in the email ID with the max length range equal to the length of the email address and renaming the column*/  






/*
NUMBER FUNCTIONS
*/

/*
1. ROUND: Rounds to the nearest whole number or specific decimal places
2. CEIL: Rounds UP to the nearest whole number.Short for 'ceiling'
3. FLOOR: Rounds DOWN to the nearest whole number
*/

SELECT product_id,
product_name,
price
FROM product;

SELECT product_id,
product_name,
price,
ROUND(price) 
FROM product;
/* Rounds to the nearest whole number */

SELECT product_id,
product_name,
price,
ROUND(price), 
ROUND(price,1)
FROM product;
/* Rounds to the nearest decimal number */

SELECT product_id,
product_name,
price,
ROUND(price), 
ROUND(price,1),
CEIL(price)
FROM product;
/*Rounds UP to the nearest whole number.*/

SELECT product_id,
product_name,
price,
ROUND(price), 
ROUND(price,1),
CEIL(price),
FLOOR(price)
FROM product;   
/*Rounds DOWN to the nearest whole number.*/

SELECT product_id,
product_name,
price
FROM product
WHERE product_id = 1;   
/*With WHERE Clause*/

SELECT product_id,
product_name,
price,
price * 9 * 0.85
FROM product
WHERE product_id = 1;   
/*Price x 9 Quantiy and 15% discount*/

SELECT product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85,2)
FROM product
WHERE product_id = 1;
/*Price x 9 Quantiy and 15% discount. Display with 2 decimal points */

SELECT product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85,2),
ROUND(price * 9 * 0.85)
FROM product
WHERE product_id = 1;
/*Price x 9 Quantiy and 15% discount. Display with nearest whole number */

SELECT product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85,2),
CEIL(price * 9 * 0.85)
FROM product
WHERE product_id = 1;
/*Price x 9 Quantiy and 15% discount. Display with nearest round UP whole number */


SELECT product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85,2),
FLOOR(price * 9 * 0.85)
FROM product
WHERE product_id = 1;
/*Price x 9 Quantiy and 15% discount. Display with nearest round DOWN whole number */






/*
DATE FUNCTIONS
*/

/*
1. SYSDATE: Current Date
2. ADD_MONTHS: adds a number of months to a date value
3. MONTHS_BETWEEN: finds the difference between two date values
*/


SELECT employee_id,
first_name,
last_name,
hire_date
FROM employee;

SELECT employee_id,
first_name,
last_name,
hire_date,
ADD_MONTHS(hire_date, 6) AS review_date
FROM employee;
/* To add 6 months after their hire_date */ 

SELECT employee_id,
first_name,
last_name,
hire_date,
ADD_MONTHS(hire_date, 6) AS review_date,
ADD_MONTHS(hire_date, 60) AS five_year
FROM employee;
/* To check when to the employees complete their 5 years */ 


SELECT employee_id,
first_name,
last_name,
hire_date,
MONTHS_BETWEEN(SYSDATE, hire_date) AS TIME_WITH_COMPANY
FROM employee;
/* How long the employee has been in the company with the months_between function */

SELECT employee_id,
first_name,
last_name,
hire_date,
MONTHS_BETWEEN(SYSDATE, hire_date)/12  AS TIME_WITH_COMPANY
FROM employee;
/* How long the employee has been in the company with the months_between function & view as years*/

SELECT employee_id,
first_name,
last_name,
hire_date,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12,1)  AS YEARS_WITH_COMPANY
FROM employee;
/* How long the employee has been in the company with the months_between function & view as years round up value*/

SELECT SYSDATE
FROM dual;
/* To view today's date */

SELECT ADD_MONTHS(SYSDATE, 20)
FROM dual;
/* To view the date with 20 months from today*/







/*
DATA TYPES and CONVERSION FUNCTIONS
*/

/*
1. CHAR: character string with fixed size
2. VARCHAR2: character string with a variable size
3. NUMBER: stores numeric data with optional decimals
4. DATE: stores date and time
5. TIMESTAMP: stores date, time, and fractional seconds
6. CLOB: stores large amount of text
*/

SELECT first_name, 
last_name, 
hire_date
FROM employee;

SELECT first_name, 
last_name, 
hire_date,
TO_CHAR(hire_date, 'YYYY_MM_DD')
FROM employee;
/* To change the format of the hire_date */

SELECT TO_DATE('2017_05_28','YYYY_MM_DD')
FROM dual;
/* Converting the date '2017_05_28' to the system date type */

SELECT TO_NUMBER('200')
FROM dual;
/* Changing a text value '200' to a number value*/






/*
CASE STATEMENTS
*/

/*
IF THEN ELSE Logic
*/

SELECT product_id,
product_name,
price
FROM product;

SELECT product_id,
product_name,
price,
CASE
WHEN price > 100 THEN 'Over 100'
WHEN price <= 100 THEN 'Less than 100'
END price_group
FROM product;
/* To view products' price group if the products are more than 100 or less than 100*/


SELECT product_id,
product_name,
price,
CASE
WHEN price > 200 THEN 'Over 200'
WHEN price > 100 AND price <= 200 THEN 'Between 100 and 200'
WHEN price > 50 AND price <= 100 THEN 'Between 50 and 100'
ELSE 'Under 50' 
END price_group
FROM product;
/* To view products' price group with more conditions*/

SELECT customer_id,
first_name,
last_name,
address_state
FROM customer;

SELECT customer_id,
first_name,
last_name,
address_state,
CASE address_state
WHEN 'NY' THEN 'EAST'
WHEN 'CA' THEN 'WEST'
WHEN 'OR' THEN 'WEST'
WHEN 'SC' THEN 'EAST'
WHEN 'TX' THEN 'WEST'
WHEN 'FL' THEN 'EAST'
WHEN 'IN' THEN 'EAST'
ELSE 'UNKNOWN'
END AS address_state_group
FROM customer;
/* To define State_group based on the state */


SELECT customer_id,
first_name,
last_name,
address_state,
CASE 
WHEN address_state IN ('NY', 'SC', 'FL', 'IN') THEN 'EAST'
WHEN address_state IN ('CA', 'OR', 'TX') THEN 'WEST'
ELSE 'UNKNOWN'
END state_group
FROM customer;
/* To define State_group based on the state with a simplified code*/
