# rajaganaa_mysql_project
# student course details

-- Professional Setup: Clean slate every time
DROP DATABASE IF EXISTS project_1;
CREATE DATABASE project_1;
USE project_1;


CREATE TABLE STUDENT (
  studentId INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  course VARCHAR(50),
  yearOfJoining INT
);

# Insert Sample Data 30 values

INSERT INTO STUDENT (firstName, lastName, email, course, yearOfJoining)
VALUES ('John', 'Doe', 'john.doe@example.com', 'Computer Science', 2023),
       ('Jane', 'Smith', 'jane.smith@example.com', 'Mathematics', 2022),
       ('Michael', 'Brown', 'michael.brown@example.com', 'Engineering', 2021),
       ('Alice', 'Johnson', 'alice.johnson@example.com', 'History', 2024),
       ('David', 'Miller', 'david.miller@example.com', 'Business', 2022),
       ('Elizabeth', 'Garcia', 'elizabeth.garcia@example.com', 'Psychology', 2023),
       ('Robert', 'Wilson', 'robert.wilson@example.com', 'Biology', 2021),
       ('Sarah', 'Thomas', 'sarah.thomas@example.com', 'English', 2024),
       ('James', 'Moore', 'james.moore@example.com', 'Chemistry', 2022),
       ('Jennifer', 'Robinson', 'jennifer.robinson@example.com', 'Art History', 2023),
       ('William', 'Clark', 'william.clark@example.com', 'Philosophy', 2021),
       ('Barbara', 'Lewis', 'barbara.lewis@example.com', 'Sociology', 2024),
       ('Richard', 'Walker', 'richard.walker@example.com', 'Political Science', 2022),
       ('Susan', 'Allen', 'susan.allen@example.com', 'Linguistics', 2023),
       ('Daniel', 'Young', 'daniel.young@example.com', 'Computer Science', 2021),
       ('Margaret', 'King', 'margaret.king@example.com', 'Mathematics', 2024),
       ('Matthew', 'Wright', 'matthew.wright@example.com', 'Engineering', 2022),
       ('Ashley', 'Scott', 'ashley.scott@example.com', 'History', 2023),
       ('Christopher', 'Nguyen', 'christopher.nguyen@example.com', 'Business', 2021),
       ('Amanda', 'Hernandez', 'amanda.hernandez@example.com', 'Psychology', 2024),
       ('Kevin', 'Lopez', 'kevin.lopez@example.com', 'Biology', 2022),
       ('Emily', 'Carter', 'emily.carter@example.com', 'English', 2023),
       ('Gregory', 'Jackson', 'gregory.jackson@example.com', 'Chemistry', 2021),
       ('Stephanie', 'Turner', 'stephanie.turner@example.com', 'Art History', 2024),
       ('Joseph', 'Diaz', 'joseph.diaz@example.com', 'Philosophy', 2022),
       ('Nicole', 'Harris', 'nicole.harris@example.com', 'Sociology', 2023),
       ('Brandon', 'Hill', 'brandon.hill@example.com', 'Political Science', 2021),
       ('Laura', 'Roberts', 'laura.roberts@example.com', 'Linguistics', 2024),
       ('Andrew', 'Thompson', 'andrew.thompson@example.com', 'Computer Science', 2022),
		('Raja', 'Ganapathy', 'rajaganaa@gmail.com', 'Artificial Intelligence', 2024);


SELECT * FROM STUDENT;



CREATE TABLE COURSE (
  courseId INT PRIMARY KEY AUTO_INCREMENT,
  courseName VARCHAR(100) NOT NULL,
  branches VARCHAR(50),
  courseFees DECIMAL(10,2) NOT NULL
);

# Insert Sample Data 30 values

INSERT INTO COURSE (courseName, branches, courseFees)
VALUES
  ('Computer Science', 'IT', 1000.00),
  ('Mathematics', 'Science', 500.00),
  ('Physics', 'Science', 700.00),
  ('Chemistry', 'Science', 650.00),
  ('History', 'Arts', 400.00),
  ('Literature', 'Arts', 450.00),
  ('English', 'Language', 350.00),
  ('French', 'Language', 400.00),
  ('Spanish', 'Language', 380.00),
  ('Marketing', 'Business', 800.00),
  ('Finance', 'Business', 900.00),
  ('Accounting', 'Business', 750.00),
  ('Management', 'Business', 850.00),
  ('Biology', 'Science', 600.00),
  ('Psychology', 'Social Science', 550.00),
  ('Sociology', 'Social Science', 480.00),
  ('Anthropology', 'Social Science', 520.00),
  ('Philosophy', 'Arts', 420.00),
  ('Web Development', 'IT', 1200.00),
  ('Graphic Design', 'Arts', 880.00),
  ('Data Science', 'IT', 1500.00),
  ('Cybersecurity', 'IT', 1300.00),
  ('Nursing', 'Medical', 1100.00),
  ('Medicine', 'Medical', 1800.00),
  ('Dentistry', 'Medical', 1600.00),
  ('Pharmacy', 'Medical', 1250.00),
  ('Law', 'Social Science', 1400.00),
  ('Political Science', 'Social Science', 500.00),
   ('Entrepreneurship', 'Business', 950.00),
  ('Hospitality Management', 'Business', 700.00)
;
SELECT * FROM project_1.course;

CREATE TABLE INSTRUCTOR (
  instructorId INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  branches VARCHAR(50)
);

# Insert Sample Data 30 values

INSERT INTO INSTRUCTOR (firstName, lastName, email, branches)
VALUES ('Albert', 'Einstein', 'albert.einstein@example.com', 'Science'),
       ('Marie', 'Curie', 'marie.curie@example.com', 'Science'),
       ('Issac', 'Newton', 'isaac.newton@example.com', 'Physics'),
       ('Stephen', 'Hawking', 'stephen.hawking@example.com', 'Physics'),
       ('Ada', 'Lovelace', 'ada.lovelace@example.com', 'Computer Science'),
       ('Alan', 'Turing', 'alan.turing@example.com', 'Computer Science'),
       ('Tim', 'Berners-Lee', 'tim.berners-lee@example.com', 'Computer Science'),
       ('Guido', 'van Rossum', 'guido.vanrossum@example.com', 'Computer Science'),
       ('William', 'Shakespeare', 'william.shakespeare@example.com', 'Literature'),
       ('Jane', 'Austen', 'jane.austen@example.com', 'Literature'),
       ('J.R.R.', 'Tolkien', 'tolkien@example.com', 'Literature'),
       ('George', 'R.R. Martin', 'martin@example.com', 'Literature'),
       ('Leonardo', 'da Vinci', 'davinci@example.com', 'Art'),
       ('Michelangelo', 'Buonarroti', 'michelangelo@example.com', 'Art'),
       ('Vincent', 'van Gogh', 'vangogh@example.com', 'Art'),
       ('Claude', 'Monet', 'monet@example.com', 'Art'),
       ('Ludwig', 'van Beethoven', 'beethoven@example.com', 'Music'),
       ('Wolfgang', 'Amadeus Mozart', 'mozart@example.com', 'Music'),
       ('Frédéric', 'Chopin', 'chopin@example.com', 'Music'),
       ('Pyotr', 'Ilyich Tchaikovsky', 'tchaikovsky@example.com', 'Music'),
       ('Aristotle', 'Ari', 'aristotle@example.com', 'Philosophy'),
       ('Plato', 'Plat', 'plato@example.com', 'Philosophy'),
       ('Socrates', 'Soc', 'socrates@example.com', 'Philosophy'),
       ('Confucius', 'Con', 'confucius@example.com', 'Philosophy'),
       ('Sun Tzu', 'Zu', 'suntzu@example.com', 'History'),
       ('Napoleon Bonaparte', 'Nap', 'napoleon@example.com', 'History'),
       ('Abraham Lincoln', 'Lin', 'lincoln@example.com', 'History'),
       ('Winston', 'Churchill', 'churchill@example.com', 'History'),
       ('Mahatma', 'Gandhi', 'gandhi@example.com', 'History'),
       ('Nelson', 'Mandela', 'mandela@example.com', 'History');

SELECT * FROM  INSTRUCTOR;


CREATE TABLE ENROLLMENT (
  enrollmentId INT PRIMARY KEY AUTO_INCREMENT ,
  studentId INT NOT NULL,
  courseId INT NOT NULL,
  enrollmentDate DATE NOT NULL,
  FOREIGN KEY (studentId) REFERENCES STUDENT(studentId),
  FOREIGN KEY (courseId) REFERENCES COURSE(courseId)
);



# Insert Sample Data 30 values

INSERT INTO ENROLLMENT(studentId, courseId, enrollmentDate) VALUES (1,30,DATE()),(2,29,DATE()),(3,28,CURDATE()),
(4,27,CURDATE()),(5,26,CURDATE()),(6,25,CURDATE()),(7,24,CURDATE()),(8,23,CURDATE()),(9,22,CURDATE()),(10,21,CURDATE()),
(11,20,CURDATE()),(12,19,CURDATE()),(13,18,CURDATE()),(14,17,CURDATE()),(15,16,CURDATE()),(16,15,CURDATE()),(17,14,CURDATE()),
(18,13,CURDATE()),(19,12,CURDATE()),(20,11,CURDATE()),(21,10,CURDATE()),(22,9,CURDATE()),(23,8,CURDATE()),(24,7,CURDATE()),
(25,6,CURDATE()),(26,5,CURDATE()),(27,4,CURDATE()),(28,3,CURDATE()),(29,2,CURDATE()),(30,1,CURDATE()) as res
;



select * from project_1.enrollment limit 30;

set sql_safe_updates = 0;


SELECT s.studentId, s.firstName, s.lastName, c.courseName
FROM STUDENT AS s
JOIN COURSE AS c
ON s.course = c.courseName;


SELECT studentId AS ID, firstName AS "First Name", lastName AS "Last Name"
FROM STUDENT;

SELECT s.studentId, s.firstName, s.lastName, c.courseName
FROM STUDENT AS s
JOIN COURSE AS c
ON s.course = c.courseName order by s.studentId;

SELECT studentId AS ID, CONCAT(firstName, " ", lastName) AS FullName
FROM STUDENT;



#1) Unique Enrollment Count:

SELECT COUNT(DISTINCT studentId) AS unique_enrollments
FROM ENROLLMENT;

#2) Courses not Enrolled By Student (Specific Student ID):

SELECT c.courseName
FROM COURSE c
WHERE c.courseId NOT IN (
  SELECT courseId
  FROM ENROLLMENT
  WHERE studentId = 1 -- Replace 1 with the desired student ID
);

#3) Course Details with Instructor Information:

SELECT c.courseId, c.courseName, c.branches, c.courseFees, i.firstName, i.lastName
FROM COURSE c
JOIN INSTRUCTOR i ON c.branches = i.branches;

#4) Student Details with Enrolled Course:

SELECT s.studentId, s.firstName, s.lastName, c.courseName, c.courseFees
FROM STUDENT s
JOIN ENROLLMENT e ON s.studentId = e.studentId
JOIN COURSE c ON e.courseId = c.courseId;

#5) Student with Most Courses Enrolled:

SELECT s.studentId, s.firstName, s.lastName, COUNT(e.enrollmentId) AS course_count
FROM STUDENT s
JOIN ENROLLMENT e ON s.studentId = e.studentId
GROUP BY s.studentId
ORDER BY course_count DESC
LIMIT 10;

#6) Rank Student Based on Course Fees (Descending):

SELECT s.studentId, s.firstName, s.lastName, SUM(c.courseFees) AS total_fees,
			@rank := @rank + 1 AS Ranks
FROM STUDENT s
JOIN ENROLLMENT e ON s.studentId = e.studentId
JOIN COURSE c ON e.courseId = c.courseId
JOIN (SELECT @rank := 0) AS r
GROUP BY s.studentId
ORDER BY total_fees DESC;


