use appledaily;

# CREATE
create table employee(
   ID integer PRIMARY KEY,
   NAME varchar(30),
   AGE  integer,
   GENDER char(1)
);

# INSERT
INSERT INTO employee(ID, NAME, AGE, GENDER) VALUES(1, 'David', 32,  'M');
INSERT INTO employee(ID, NAME, AGE, GENDER) VALUES(2, 'Mary',  23,  'F');
INSERT INTO employee(ID, NAME, AGE, GENDER) VALUES(3, 'John',  28,  'M');

# SELECT
SELECT * FROM employee;
SELECT NAME, AGE from employee;

# WHERE
SELECT * FROM employee WHERE AGE < 30;

# ORDER BY
SELECT * FROM employee ORDER BY AGE;
SELECT * FROM employee ORDER BY AGE DESC;

# LIMIT
SELECT * FROM employee ORDER BY AGE DESC LIMIT 1;
SELECT * FROM employee ORDER BY AGE DESC LIMIT 3;

# GROUP BY
SELECT GENDER, AVG(AGE) FROM employee GROUP BY GENDER;

# HAVING
SELECT GENDER, AVG(AGE) FROM employee GROUP BY GENDER HAVING AVG(AGE) < 30;

# UPDATE
UPDATE employee SET NAME = 'Johnny' WHERE ID = 3;
SELECT NAME, AGE from employee;

# DELETE
DELETE FROM employee WHERE ID = 3;
SELECT NAME, AGE from employee;

# DROP
DROP TABLE employee;