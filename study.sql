INSERT INTO students(id, name, start_year) VALUES (1451, 'Анна', 2014), (1432, 'Виктор', 2014), (1556, 'Нина', 2014);

SELECT * FROM students;

CREATE TABLE students(
	id integer PRIMARY KEY,
	name text,
	start_year integer
);

CREATE TABLE exams(
	id integer REFERENCES students(id),
	c_no text REFERENCES courses(c_no),
	score integer,
	CONSTRAINT pk PRIMARY KEY(id, c_no) 
);

SELECT * FROM exams;

INSERT INTO exams(id, c_no, score)
VALUES (1451, 'CS301', 5),
(1556, 'CS301', 5),
(1451, 'CS305', 5),
(1432, 'CS305', 4);
