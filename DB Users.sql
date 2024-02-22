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
        
INSERT INTO users VALUES(4,'Naomi','lkjh', '9877653451', 18, 'F', 1);