/*
STATEMENTS
- DML, DDL and TCL
  TCL: Transaction Control Language
  DML: Data Manipulation Language (SELECT, INSERT, UPDATE, DELETE)
  DDL: Data Defition Language (Define Objects such as Tables)
*/



/*
CREATE Table
*/

CREATE TABLE job_role (
job_role_id NUMBER(10),
role_name VARCHAR2(50),
role_create_date DATE
); 

SELECT * 
FROM job_role;


/*
ALTER a Table
*/

ALTER TABLE job_role
ADD job_description VARCHAR2(200);
/*Adding a new Column to a table*/

SELECT * 
FROM job_role;


ALTER TABLE job_role
DROP COLUMN job_description;
/*Deleting a Column from a table*/

SELECT * 
FROM job_role;



ALTER TABLE job_role
RENAME COLUMN role_name TO job_title;
/*Rename a column in a table*/

SELECT * 
FROM job_role;


ALTER TABLE job_role
RENAME TO job_title;

SELECT * 
FROM job_title;





/*
DROP a Table
*/

DROP TABLE job_title;

SELECT *
FROM job_title;  

