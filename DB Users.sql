CREATE DATABASE WannaChat;
use WannaChat;

CREATE TABLE users
(
	id int UNSIGNED,
    name varchar(50),
	password varchar(20),
	contact varchar(15),
    DOB date,
    gender enum("M" , "F"),
    status boolean
);

INSERT INTO users
	(id,name,password,contact,DOB,gender,status) VALUES
		(1,'Chicony','zxcvbnm', '9876543210', '2000-08-24', 'M', 1),
        (2,'Kazama','qwerty', '9876541232', '2002-03-12', 'M', 1),
        (3,'Freya','lkjh', '9876123451', '1998-11-19', 'F', 1);
		