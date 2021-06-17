INSERT INTO PERSONNEL
VALUES ('0005169082', 'John', 'Stevenson', 'Devin', 'North, Shumen', 10, '0879154891'),
       ('1105262816 ', 'Ashley', 'Lewis', 'Newman', 'South, Varna', 10, '0891594891'),
       ('4812025193 ', 'Lisa', 'Sanderson', 'Parsons', 'South, Sofia', 10, '0893733131'),
       ('2303116508 ', 'James', 'Harvard', 'Danaher', 'East, Burgas', 10, '0886491577'),
       ('7110202495 ', 'Barbara', 'Cond', 'Morales', 'West, Kazanlak', 10, '0876035931'),
       ('0746272382 ', 'Henry', 'Bradly', 'Williams', 'Center, Plovdiv', 10, '0876940030'),
       ('1205077771 ', 'Carrie', 'Lewis', 'Martin', 'North, Lovech', 10, '0888915639'),
       ('8111229907 ', 'Alva', 'Johnson', 'Newman', 'East, Sofia', 10, '0894247491'),
       ('9407118017 ', 'Jose', 'Martin', 'Marquardt', 'West, Sofia', 10, '0887890809'),
       ('9802065644 ', 'Clare', 'Barrison', 'McPherson', 'South, Pleven', 10, '0877231261');

INSERT INTO SUBJECT_ROOMS
VALUES (0, 'Teachers` Room'),
       (1, 'Accountants'),
       (20, 'German'),
       (21, 'English'),
       (23, 'Bulgarian'),
       (24, 'Maths'),
       (25, 'Geography'),
       (26, 'Art'),
       (27, 'Networks'),
       (30, 'Music'),
       (31, 'Chemistry'),
       (2, 'PE'),
       (32, 'PE');

INSERT INTO TEACHERS
VALUES ('7501135887', 'James', 'Johnson', 'Drummer', 'Center, Sofia', 10, '0894824328', null, null, 0);

INSERT INTO TEACHERS
VALUES ('8605260732', 'Boyette', 'Johnson', 'Lancaster', 'West Sofia', 10, '0894824328', '7501135887', null, 1),
       ('5041079229', 'Daniel', 'Sebastian', 'Gomez', 'West, Burgas', 8, '0894824328', '8605260732', '7501135887', 30),
       ('6711264183', 'Leona', 'Jackson', 'Rawlins', 'South, Varna', 8, '0870130711', '8605260732', '7501135887', 31),
       ('5405177374', 'Zachary', 'Santana', 'Washington', 'West, Pleven', 8, '0889236051', '8605260732', '7501135887',
        20),
       ('9505275638', 'Timothy', 'Wacker', 'Henley', 'East, Blagoevgrad', 8, '0870846264', '8605260732', '7501135887',
        23),
       ('4001013165', 'Ernest', 'Santiago', 'London', 'Center, Montana', 8, '0877754123', '8605260732', '7501135887',
        21),
       ('5102191383', 'Janis', 'Pena', 'Williams', 'North, Lovech', 8, '0891398065', '8605260732', '7501135887', 24),
       ('6112141993', 'Maria', 'Myers', 'Ashe', 'East, Varna', 8, '0894058581', '8605260732', '7501135887', 25),
       ('6407061240', 'Laura', 'Blair', 'Stilson', 'Center, Vratsa', 8, '0870076647', '8605260732', '7501135887', 27),
       ('8810292705', 'Linda', 'Portugal', 'Bell', 'South, Varna', 8, '0889742455', '8605260732', '7501135887', 26),
       ('5008076866', 'Jessica', 'Boutte', 'Mengel', 'West, Kurdjali', 8, '0892027123', '8605260732', '7501135887', 2),
       ('4601118384', 'Michael', 'Gomez', 'Thomason', 'North, Sofia', 8, '0884630809', '8605260732', '7501135887', 32);

UPDATE TEACHERS
SET VICE_HEADMASTER = '8605260732'
WHERE SSN = '7501135887';

INSERT INTO MAJORS
VALUES ('Computer science'),
       ('Humanitarian'),
       ('Maths'),
       ('Nature science'),
       ('Languages');

INSERT INTO CLASSES
VALUES (8, 'a', 'Computer science', '6711264183'),
       (8, 'b', 'Humanitarian', '6407061240'),
       (9, 'a', 'Computer science', '5405177374'),
       (9, 'c', 'Maths', '8810292705'),
       (10, 'b', 'Humanitarian', '9505275638'),
       (10, 'd', 'Nature science', '5008076866'),
       (11, 'c', 'Maths', '4001013165'),
       (11, 'e', 'Languages', '4601118384'),
       (12, 'd', 'Nature science', '5102191383'),
       (12, 'e', 'Languages', '6112141993');

INSERT INTO GUARDIANS
VALUES ('5743183091', 'Angelo', 'Lewis', 'Spears', 'South, Sofia', '0892146728'),
       ('5949017618', 'Allan', 'Watts', 'Penn', 'South, Smolqn', '0879282110'),
       ('4006135171', 'Erin', 'Hannah', 'Gibson', 'North, Veliko Turnovo', '0883729680'),
       ('5310106598', 'Leonie', 'King', 'Martin', 'West, Plovdiv', '0879773256'),
       ('9409306420', 'Valerie', 'Cunningham', 'Amador', 'East, Ruse', '0897751657'),
       ('1603018223', 'Bertha', 'Cobb', 'Busby', 'East, Turgovishte', '0898925939'),
       ('1807096258', 'Douglas', 'Timmons', 'Cullen', 'Center, Sofia', '0886075389'),
       ('2505244969', 'Jerry', 'Dixon', 'Anderson', 'North, Plovdiv', '0874095305'),
       ('3703158794', 'Willie', 'Robertson', 'Williams', 'South, Shumen', '0880562086'),
       ('5407022643', 'Judith', 'Huff', 'Read', 'Center, Kurdjali', '0877229390');

INSERT INTO STUDENTS
VALUES (13, 'Tammy', 'Xiong', 'Jenks', 8, 'a', '5743183091'),
       (3, 'Cindy', 'Thompson', 'Stevens', 9, 'a', '5743183091'),
       (15, 'David', 'Hughes', 'Perez', 8, 'b', '5743183091'),
       (8, 'Michael', 'Schmaltz', 'Lira', 10, 'b', '5743183091'),
       (16, 'Joseph', 'Flores', 'Germain', 11, 'c', '5743183091'),
       (6, 'Earl', 'Knupp', 'Hancock', 12, 'd', '5743183091'),
       (1, 'David', 'Henry', 'Jamieson', 8, 'b', '5743183091'),
       (27, 'Mabel', 'Pridgen', 'Haines', 11, 'e', '5743183091'),
       (4, 'Gary', 'Biggs', 'Reed', 9, 'c', '5743183091'),
       (5, 'Richard', 'Gillis', 'Barnes', 10, 'd', '5743183091');

INSERT INTO MEDICAL_AUXILIARIES
VALUES ('9010187050', 'Marylou', 'Wainwright', 'Gray', 'Center, Burgas', 10, '0899319655');

INSERT INTO SUBJECTS
VALUES ('Maths'),
       ('English'),
       ('Bulgarian'),
       ('Programming'),
       ('Art'),
       ('Geography'),
       ('Networks'),
       ('Biology'),
       ('Chemistry'),
       ('Music');

INSERT INTO E_GRADEBOOKS
VALUES (1.5, 0, null, 13, 8, 'a'),
       (18, 5, 'Does not do homeworks', 3, 9, 'a'),
       (185, 12.00, 'Often is absent', 15, 8, 'b'),
       (53, 5, null, 8, 10, 'b'),
       (0, 2, null, 16, 11, 'c'),
       (2.5, 4, 'Talks in class', 6, 12, 'd'),
       (5.5, 3, null, 1, 8, 'b'),
       (12, 6.5, null, 27, 11, 'e'),
       (86, 7.5, 'Bullies other children', 4, 9, 'c'),
       (57, 0, null, 5, 10, 'd');

INSERT INTO MEDICAL_RECORDS
VALUES ('9010187050', 8, 'a', 13),
       ('9010187050', 9, 'a', 3),
       ('9010187050', 8, 'b', 15),
       ('9010187050', 10, 'b', 8),
       ('9010187050', 11, 'c', 16),
       ('9010187050', 12, 'd', 6),
       ('9010187050', 8, 'b', 1),
       ('9010187050', 11, 'e', 27),
       ('9010187050', 9, 'c', 4),
       ('9010187050', 10, 'd', 5);

INSERT INTO SUBJECTS_IN_MAJORS
VALUES ('Maths', 'Maths'),
       ('Languages', 'English'),
       ('Humanitarian', 'Bulgarian'),
       ('Computer science', 'Programming'),
       ('Humanitarian', 'Art'),
       ('Nature science', 'Geography'),
       ('Computer science', 'Networks'),
       ('Nature science', 'Biology'),
       ('Nature science', 'Chemistry'),
       ('Humanitarian', 'Music');

INSERT INTO TEACHES
VALUES ('8605260732', 'Maths'),
       ('5041079229', 'English'),
       ('6711264183', 'Bulgarian'),
       ('5405177374', 'Programming'),
       ('9505275638', 'Art'),
       ('4001013165', 'Geography'),
       ('5102191383', 'Networks'),
       ('6112141993', 'Biology'),
       ('6407061240', 'Chemistry'),
       ('8810292705', 'Music');

INSERT INTO GRADES
VALUES (4.50, '8605260732', 'Maths', 13, 8, 'a'),
       (5.50, '5041079229', 'English', 3, 9, 'a'),
       (3.00, '6711264183', 'Bulgarian', 15, 8, 'b'),
       (2.00, '5405177374', 'Programming', 8, 10, 'b'),
       (6.00, '9505275638', 'Art', 16, 11, 'c'),
       (4.25, '4001013165', 'Geography', 6, 12, 'd'),
       (5.75, '5102191383', 'Networks', 1, 8, 'b'),
       (3.25, '6112141993', 'Biology', 27, 11, 'e'),
       (4.00, '6407061240', 'Chemistry', 4, 9, 'c'),
       (3.00, '8810292705', 'Music', 5, 10, 'd');

INSERT INTO ACCESSES
VALUES ('5743183091', 13, 8, 'a'),
       ('5949017618', 3, 9, 'a'),
       ('4006135171', 15, 8, 'b'),
       ('5310106598', 8, 10, 'b'),
       ('9409306420', 16, 11, 'c'),
       ('1603018223', 6, 12, 'd'),
       ('1807096258', 1, 8, 'b'),
       ('2505244969', 27, 11, 'e'),
       ('3703158794', 4, 9, 'c'),
       ('5407022643', 5, 10, 'd');

INSERT INTO FILLS
VALUES ('8605260732', 13, 8, 'a'),
       ('5041079229', 3, 9, 'a'),
       ('6711264183', 15, 8, 'b'),
       ('5405177374', 8, 10, 'b'),
       ('9505275638', 16, 11, 'c'),
       ('4001013165', 6, 12, 'd'),
       ('5102191383', 1, 8, 'b'),
       ('6112141993', 27, 11, 'e'),
       ('6407061240', 4, 9, 'c');