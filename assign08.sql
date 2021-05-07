/*
Carlos Munoz
assignment08
INFO_1335_4A
Rosas
5-13-2021
*/

-- query that shows classes and their details taken by patty melt and bilbo baggins 
SELECT fname, lname, name AS course, dept, number, section, grade
FROM students s
JOIN enroll e ON s.stu_id = e.stu_id 
JOIN classes c ON e.class_id = c.class_id
WHERE s.stu_id = 1 OR s.stu_id = 6;

--query that inserts a new record into the students table
INSERT INTO students
VALUES(DEFAULT, 'rory', 'williams', '236', '887-4061');

--query that shows the assigned stu_id for rory williams
SELECT stu_id, fname, lname
FROM students
WHERE fname = 'rory'; 

--query taht enrolls rory williams into INFO 1325
INSERT INTO enroll
VALUES(7, 3, '');

--query that updates the grade for luke skywalker in inFO 2430
UPDATE enroll
SET grade = 'B'
WHERE stu_id = 4 AND class_id = 7; 

--query that deletes enrollments of charly kelly
DELETE FROM enroll
WHERE stu_id = 5; 