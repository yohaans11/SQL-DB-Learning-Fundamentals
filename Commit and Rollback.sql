/*
COMMIT and ROLLBACK
*/

/*
1. COMMIT: Save your changes in the SQL Query
2. ROLLBACK: To undo the changes in the SQL Query
*/

INSERT INTO product (product_id, product_name, price, department_id)
VALUES (12, 'Large Table', 220.50, 2);

SELECT * 
FROM product;

COMMIT;

INSERT INTO product (product_id, product_name, price, department_id)
VALUES (15, 'Red Chair', 52, 6);

SELECT * 
FROM product;

ROLLBACK;

SELECT * 
FROM product;
