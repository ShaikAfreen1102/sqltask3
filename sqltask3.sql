Create database college;
show databases;
use college;
drop table if exists Enrollments;
drop table if exists students_table;

-- Students table --
Create table students_table (
StudentID int primary key,
Name varchar(50) not null,
Email varchar(100) unique key,
Age int check (age>=18),
IsActive bool default True
);

 -- Enrollments table --
Create table enrollments(
EnrollmentID int unique key,
CourseName varchar(100) not null,
Credits int check(Credits between 1 and 5),
StudentID int,
Enrollment_date date default (current_date),
foreign key (StudentID) references students_table(StudentID)
); 
describe table enrollments;

insert into students_table values(501, "John", "john501@gmail.com", 29, True), 
(502, "George", "george502@gmail.com", 34, False),
(503, "Jessy", "jessy503@gmail.com", 25, True);
select* from students_table;

insert into enrollments(EnrollmentID, CourseName, Credits, StudentID)
values(1001, "CSE", 4, 501),
(1002, "ECE", 3, 502),
(1003, "CSE", 5, 503);
select*from enrollments;

-- -- ---- -------- Testing constraints -------- ---- --- -- --

insert into students_table (StudentID, Name, Email, Age)
values (601, NULL, 'test1@gmail.com', 20);

insert into students_table (StudentID, Name, Email, Age)
values (602, 'Asha', 'asha@gmail.com', 21);

insert into students_table (StudentID, Name, Email, Age)
values (603, 'Riya', 'asha@gmail.com', 22);

insert into students_table (StudentID, Name, Email, Age)
values (604, 'Rahul', 'rahul2@gmail.com', 16);

insert into enrollments (EnrollmentID, CourseName, Credits, StudentID)
values (2001, 'AI', 3, 999);

insert into enrollments (EnrollmentID, CourseName, Credits, StudentID)
values (2002, 'ML', 7, 501);


