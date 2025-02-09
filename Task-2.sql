use studentmanagement;
# Creating a table courses
create table Courses(
course_id int primary key,
course_name varchar(15),
course_description varchar(80)
);

# Creating a table enrolments
create table Enrolments(
enrolment_id int primary key,
student_id int,
course_id int,
enrolment_date date,
foreign key(student_id) references students(studentid),
foreign key(course_id) references courses(course_id)
);

# Inserting values into courses
insert into courses (course_id,course_name,course_description) values 
	(1, 'Mathematics', 'Introduction to Calculus and Algebra.'),
    (2, 'JAVA', 'Object Oriented Programming through Java.'),
    (3, 'DBMS', 'Database management and querying using MySQL.'),
    (4, 'MEFA', 'Introduction to Managerial Economics and Financial Analysis.');

# Inseting values into enrolments
    insert into Enrolments (student_id, course_id, enrolment_date) values
	(1,1, '2024-12-25'), 
    (2,3, '2024-12-20'),
    (3,2, '2024-12-14'),
    (6,2, '2024-12-30'),
        (5,3, '2025-01-10'),
    (3,1, '2025-01-12');
    
ALTER TABLE Enrolments MODIFY enrolment_id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE Enrolments DROP PRIMARY KEY;

# List all students and the courses they are enrolled in.
select students.Name,courses.course_name
from students
inner join enrolments on students.studentId = enrolments.student_id
inner join courses on enrolments.course_id = courses.course_id;

# Find the number of students enrolled in each course.
select courses.course_id,courses.course_name,count(enrolments.student_id) as No_Of_Students
from courses
left join enrolments on courses.course_id = enrolments.course_id
group by courses.course_id,courses.course_name
order by courses.course_id;

# List students who have enrolled in more than one course.
select student_id, count(course_id) as No_Of_Courses
from enrolments
group by student_id
having count(course_id)>1;

# Find courses with no enrolled students
select courses.course_id, courses.course_name
from courses
left join enrolments on courses.course_id = enrolments.course_id
where enrolments.enrolment_id is null;

    



    

    


