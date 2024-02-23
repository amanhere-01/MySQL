DROP DATABASE IF EXISTS WannaChat;
CREATE DATABASE WannaChat;
use WannaChat;

CREATE TABLE users
(

	id int UNSIGNED,
	name varchar(50),
	password varchar(20),
	contact varchar(15),
	age int,
	gender enum("M" , "F"),
	status boolean
);

INSERT INTO users
	(id,name,password,contact,age,gender,status) VALUES
	(1,'Chicony','zxcvbnm', '9876543210', 21, 'M', 1),
     (2,'Kazama','qwerty', '9876541232', 26, 'M', 1),
     (3,'Freya','lkjh', '9876123451', 16, 'F', 1);
        
INSERT INTO users VALUES(6,'Faith','cvbn', '9821652151', 23, 'F', 0);
INSERT INTO users VALUES(7,'Aitch','poiu', '9345652151', 23, 'M', 0);
INSERT INTO users VALUES(8,'John','tree', '9345657651', 27, 'M', 1);
INSERT INTO users VALUES(9,'Jenny','cvb12', '9345657651', 30, NULL, 1);
INSERT INTO users VALUES(10,'Mimi','456', NULL, 36, NULL, 0);

SELECT id,name as "UserName",age,  status FROM users;
SELECT * FROM users;

SELECT * FROM users WHERE age>18;
SELECT * FROM users WHERE age<=18;

SELECT * FROM users WHERE age>=18 AND age<25;
SELECT * FROM users WHERE age>=18 AND age<25 AND status=1;

SELECT * FROM users WHERE age=18 OR age=21;

SELECT * FROM users WHERE NOT age=18;
SELECT * FROM users WHERE NOT age=18 AND NOT age =16;

SELECT * FROM users WHERE age=18 OR age =16 OR age =21;
SELECT * FROM users WHERE age IN(18,16,21);	# Instead of writing multiple OR we can use IN 

-- WILDCARDS 
-- % denotes any number of character(including 0 character)
-- _ denotes only one number of chars

SELECT * FROM users WHERE name Like 'a%' ;	-- name which starts with a 
SELECT * FROM users WHERE name Like '%a' ;	-- name which ends with a
SELECT * FROM users WHERE name Like '%a%' ;		-- here % is used becore a so it means a ke pahle char ho bhi sakta hai aur nahi bhi likewise a ke baad % hai so it means ends with a or not 
SELECT * FROM users WHERE name Like '%_h_%' ;	-- before h and after h there should be 1 char available
SELECT * FROM users WHERE name Like '__i%' ;	-- i should be at 3rd position
SELECT * FROM users WHERE name Like 'j___' ;	-- starts with j and there should be 3 chars after j


SELECT * FROM users WHERE age BETWEEN 20 AND 25;
SELECT * FROM users WHERE age NOT BETWEEN 20 AND 25;

# Sorting
SELECT * FROM users ORDER BY name ASC;
SELECT * FROM users ORDER BY age DESC;

# Picking distinct(unique) element
SELECT DISTINCT age FROM users;
SELECT DISTINCT age FROM users ORDER BY age ASC;

# IS NULL and IS NOT NULL Operators
SELECT *  FROM users WHERE gender IS NULL;
SELECT *  FROM users WHERE gender IS NOT NULL ;
SELECT *  FROM users WHERE gender IS NULL AND contact IS NULL;

# Limit and Offset
# Indexing of tuples starts from 0 like array  
SELECT * FROM users LIMIT 5;	-- will return the first five data
SELECT * FROM users ORDER BY name ASC LIMIT 5;	-- will sort the tuples first and then return the first five tuples
SELECT * FROM users WHERE age>25 LIMIT 5;	
#	Limit will give data from 0th row but to get from particular row we use OFFSET

SELECT * FROM users LIMIT 5;
SELECT * FROM users LIMIT 4 OFFSET 2;	-- it will give first 4 data from 3rd row(offset+1)

# Aggregate function
SELECT count(id) FROM users WHERE age>25;
SELECT sum(age) FROM users;
SELECT avg(age) FROM users;
SELECT min(age) FROM users;
SELECT max(age) FROM users;

# UPDATE QUERY
UPDATE users SET age=40 WHERE id=3;		-- To update we need to provide column which is primary key

# DELETE QUERY
DELETE FROM users WHERE id=8;
-- Now that id 8 is deleted, we cannot assign id=8 to any other incoming row
INSERT into users (name,password,contact,age,gender,status) VALUES ('Doker','234sdf', '9873216547',16,'F',1); 	-- id=11 will be assigned


# COMMIT & ROLLBACK
-- once we commit then we can't rollback...we can only rollback if the changes is not commmited yet
-- Workbench do auto commit so we have to off that for now (Edit->Preferences->SQL Editor->SQL Execution->New coonection use auto commit mode)
UPDATE users SET age=22 WHERE id=7;
ROLLBACK;
COMMIT;		# now if we commit this we can't rollback it 

DELETE FROM users WHERE id=11;
ROLLBACK;
SELECT * FROM users;









