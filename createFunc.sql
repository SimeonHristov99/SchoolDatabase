--scalar function
CREATE FUNCTION get_student_average_grade(stud_number INTEGER, stud_class_number INTEGER, stud_class_letter CHAR(1))
RETURNS DECIMAL(3, 2)
RETURN
        SELECT AVG(value) AS avg_grade
        FROM GRADES
        WHERE CLASS_NUMBER = stud_class_number
        AND CLASS_LETTER = stud_class_letter
        AND STUDENT = stud_number;

--table function
CREATE FUNCTION get_teachers_subjects()
RETURNS TABLE (teacher_name VARCHAR(100), subject varchar(16))
RETURN SELECT (FIRST_NAME || ' ' || SECOND_NAME || ' ' || THIRD_NAME) AS NAME, SUBJECT
       FROM TEACHERS, TEACHES
       WHERE SSN = TEACHER;



VALUES FN71913.get_student_average_grade(1, 8, 'a');

SELECT *
FROM TABLE(FN71913.get_teachers_subjects()) T;

-- Write a scalar function that accepts a room name
-- and returns the head teacher.

CREATE FUNCTION GETHEADNAME(P_RNAME VARCHAR(16))
    RETURNS VARCHAR(62)
    RETURN
        SELECT FIRST_NAME || ' ' || THIRD_NAME
        FROM TEACHERS
                 JOIN SUBJECT_ROOMS SR
                      ON TEACHERS.HEAD_OF_ROOM = SR.NUMBER
        WHERE SR.NAME = P_RNAME;

-- In case of deletion requirement:
--DROP SPECIFIC FUNCTION SQL200519164011940;

-- Write a function that accepts a class number and a class letter
-- and returns the students part of that class as well as their guardians.

CREATE FUNCTION GETSTUDENTS(P_CNUMBER INT, P_CLETTER CHAR(1))
    RETURNS TABLE
            (
                NAME     VARCHAR(64),
                GUARDIAN VARCHAR(64)
            )
    RETURN
        SELECT S.FIRST_NAME || ' ' || S.THIRD_NAME AS NAME, G.FIRST_NAME || ' ' || G.THIRD_NAME AS GUARDIAN
        FROM STUDENTS S
                 JOIN GUARDIANS G
                      ON S.GUARDIAN = G.SSN
        WHERE S.CLASS_NUMBER = P_CNUMBER
          AND S.CLASS_LETTER = P_CLETTER;

-- In case of deletion requirement:
--DROP FUNCTION SQL200519164212941;

-- Validate the creations.
SELECT *
FROM SYSCAT.FUNCTIONS
WHERE FUNCSCHEMA = 'FN71845';

-- Test the scalar function.
SELECT NAME AS ROOM, FN71845.GETHEADNAME(NAME) AS HEAD
FROM SUBJECT_ROOMS;

-- Test the function that returns a table.
SELECT *
FROM TABLE(FN71845.GETSTUDENTS(8, 'b')) t;