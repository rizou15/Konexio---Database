CREATE TABLE IF NOT EXISTS students
(
    id INT PRIMARY KEY NOT NULL,
    name  VARCHAR(30),
    city VARCHAR (30)
);

INSERT INTO students (id, name, city)
 VALUES
 (1,'Véronique','Paris'),
 (2,'Steeven','Lyon'),
 (3,'Marc','Marseille'),
 (4,'Nour','Lyon'),
 (5,'Romain','Paris'),
 (6,'Sophie','Paris');

 CREATE TABLE IF NOT EXISTS languages
(
    id INT PRIMARY KEY NOT NULL,
    name  VARCHAR(30)

);

 INSERT INTO languages (id,name)
 VALUES
 (1,'French'),
 (2,'English'),
 (3,'German'),
 (4,'Spanish'),
 (5,'Mandarin');

 CREATE TABLE IF NOT EXISTS favorites
(
    id INT PRIMARY KEY NOT NULL,
    class  VARCHAR(30),
    sport VARCHAR (30),
    student_id SMALLINT (6)
);

 INSERT INTO favorites (id,Class,Sport,Student_ID)
 VALUES
 (1,'Maths','Cricket',2),
 (2,'Music','Hip-hop',6),
 (3,'Arts','Boxing',1),
 (4,'Literature','Tennis',3),
 (5,'Computer science','Tennis',5),
 (6,'Arts','Baseball',4);

CREATE TABLE IF NOT EXISTS students_languages
(
    id INT PRIMARY KEY NOT NULL,
    student_id  INT (6),
    language_id INT (6)
);

INSERT INTO students_languages (id,student_id,language_id)
VALUES
(1,1,1),
(2,1,2),
(3,2,1),
(4,2,3),
(5,3,1),
(6,4,1),
(7,4,2),
(8,4,4),
(9,4,5),
(10,5,1),
(11,5,5),
(12,6,1),
(13,6,2),
(14,6,3);

Rapport lvl 1

1) SELECT * FROM students WHERE id = 3
2) SELECT * FROM students WHERE id = 6
3) SELECT name,city FROM students WHERE id = 1
4) SELECT name FROM students WHERE id = 2
5) SELECT * FROM students WHERE city = 'Paris'
6) SELECT name FROM students WHERE city = 'Lyon'

Rapport lvl2

1) SELECT * FROM students NATURAL JOIN favorites WHERE id = 5
2) SELECT name,sport FROM students NATURAL JOIN favorites WHERE id = 4
3) SELECT name,class FROM students NATURAL JOIN favorites WHERE id = 1
4) SELECT * FROM students NATURAL JOIN favorites  WHERE class = 'Music'
5) SELECT name FROM students NATURAL JOIN favorites WHERE sport = 'Tennis'
6) SELECT name FROM students NATURAL JOIN favorites WHERE class = 'Arts'
7) SELECT COUNT(name) FROM students WHERE city = 'Paris'


Rapport lvl3

1) 
2)
3)
4)

/*SELECT LOCATE( e, name) FROM * WHERE *; ?? = voir la bonne méthode pour séléctionner tous les "e" ??