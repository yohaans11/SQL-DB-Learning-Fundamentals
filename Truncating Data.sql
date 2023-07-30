/*
TRUNCATE Function
*/

/*
Deletes all records and no ROLLBACK allowed
*/

SELECT * 
FROM customer_order;

TRUNCATE TABLE customer_order;

ROLLBACK;

SELECT * 
 FROM customer_order;
