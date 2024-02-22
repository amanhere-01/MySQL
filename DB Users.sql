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
SELECT * FROM users WHERE age IN(18,16,21);
























