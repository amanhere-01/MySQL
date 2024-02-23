use wannachat;

CREATE TABLE person
(
	id int PRIMARY KEY ,
	name varchar(50) not null,
	email varchar(50) not null unique,
	age tinyint check (age>15),
);

INSERT into person
	(id,name,email,age) VALUES
		(1,'Chicony','chicony@gmail.com', 20);

# DDL Commands
-- ADD new column
ALTER TABLE person ADD status boolean DEFAULT 1;

-- Modify the column(change data type of column)
ALTER TABLE person MODIFY status int DEFAULT 1 ;

-- Rename the Column
ALTER TABLE person CHANGE COLUMN status mode int DEFAULT 1; 	# first write current column name then wrie changing name alongwith data type

-- DROP COLUMN	
ALTER TABLE person DROP COLUMN mode; 

-- RENAME THE TABLE
ALTER TABLE person RENAME TO person_datils;
ALTER TABLE person_datils RENAME TO person;
        
DESC person;
SELECT * FROM person;