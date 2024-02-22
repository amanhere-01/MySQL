CREATE DATABASE players;
USE players;
CREATE TABLE player(
	id INT 	PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO player VALUES(101, 'ChiconyPlays');

INSERT INTO player 
	(id, name) VALUES 
		(301, 'NoobAtMission'),
        (401, 'Zerkaa');
	
SELECT * FROM player;
DESC player;