use studentmanagement;

#TASK 1:
SELECT students.Name, courses.course_name
FROM students
INNER JOIN enrolments ON students.studentId = enrolments.student_id
INNER JOIN courses ON enrolments.course_id = courses.course_id;

#TASK 2:
SELECT courses.course_id, courses.course_name, COUNT(enrolments.student_id) AS NumberOfStudents
FROM courses
LEFT JOIN enrolments ON courses.course_id = enrolments.course_id
GROUP BY courses.course_id, courses.course_name
order by courses.course_id;

#Task 3
select student_id, count(course_id) as NumberOfCourses
from enrolments
group by student_id
having count(course_id)>1 ;

#Task 4
select courses.course_id, courses.course_name
from courses
LEFT JOIN enrolments ON courses.course_id = enrolments.course_id
where enrolments.enrolment_id is NULL;