use wannachat;

CREATE TABLE person
(
	id int PRIMARY KEY ,
	name varchar(50) not null,
	email varchar(50) not null unique,
	age tinyint check (age>15),
	status boolean default 0
);

INSERT into person
	(id,name,email,age) VALUES
		(2,'Kazama','qwer@gmail.com', 34);
        

SELECT * FROM person;