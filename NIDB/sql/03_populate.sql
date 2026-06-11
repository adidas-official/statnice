DELETE FROM project;
DELETE FROM employee;

INSERT INTO project (project_name) VALUES
	('everest'),
	('ultra'),
	('blackbriar'),
	('sonnata'),
	('judgement-day')
;

INSERT INTO employee (fname, lname, project_id) VALUES
	('john', 'skywalker', 3),
	('matt', 'kongos', 1),
	('ron', 'dhaar', 2),
	('jim', 'johnson', 5),
	('rose', 'kennet', 1),
	('gwen', 'michaels', 4),
	('irene', 'donovan', 3),
	('martina', 'perry', 5),
	('mary', 'luise', 1),
	('leslie', 'newman', 3),
	('jimmy', 'knight', 2),
	('susan', 'powers', 2)
;
