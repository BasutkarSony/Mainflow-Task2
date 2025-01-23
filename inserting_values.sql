use studentmanagement;
create table courses(
	course_id int Primary key,
    course_name varchar(50),
    course_description varchar(100)
);
create table Enrolments(
	enrolment_id int auto_increment Primary key,
	student_id int,
    course_id int,
    enrolment_date date,
    foreign key(student_id) references students(studentid),
    foreign key(course_id) references courses(course_id)
);
insert into courses (course_id,course_name,course_description) values 
	(1, 'Mathematics','Introduction to Calculus and Algebra'),
    (2, 'java', 'It is a versatile, platform-independent programming language'),
    (3, 'MySQL', 'MySQL is an open-source relational database'),
    (4, 'Computer Science', 'Fundamentals of programming'),
    (0, 'Python');
insert into Enrolments (student_id, course_id, enrolment_date) values
	(1,1, '2024-12-01'), 
    (2,3, '2024-10-05'),
    (2,2, '2024-12-05'),
    (3,1, '2024-11-01'),
    (5,4, '2024-10-11'),
	(6,4, '2025-01-11'),
    (6,3, '2025-01-10');