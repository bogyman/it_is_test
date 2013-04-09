DROP TABLE IF EXISTS person;
CREATE TABLE IF NOT EXISTS person(
    id serial PRIMARY KEY CHECK (id > 0),
    name varchar(255) NOT NULL,
    boss_id int
);

ALTER TABLE person ADD CONSTRAINT boss_id FOREIGN KEY (id) REFERENCES person (id) MATCH FULL;



INSERT INTO person (name, boss_id) values ('name1', 0);
INSERT INTO person (name, boss_id) values ('name2', 1);
INSERT INTO person (name, boss_id) values ('name3', 2);
INSERT INTO person (name, boss_id) values ('name4', 2);
INSERT INTO person (name, boss_id) values ('name5', 2);
INSERT INTO person (name, boss_id) values ('name6', 3);
INSERT INTO person (name, boss_id) values ('name7', 3);
INSERT INTO person (name, boss_id) values ('name8', 3);
INSERT INTO person (name, boss_id) values ('name9', 2);