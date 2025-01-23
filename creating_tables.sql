use studentmanagement;
create table courses(
	course_id int Primary key,
    course_name varchar(50),
    course_description varchar(100)
);
create table Enrolments(
	enrolment_id int Primary key,
	studentid int,
    course_id int,
    enrolment_date date,
    foreign key(studentid) references students(studentid),
    foreign key(course_id) references courses(course_id)
);