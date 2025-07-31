# Student Management System - Task 2

## Overview  
This project builds on Task 1 by expanding the Student Management System database with additional tables—`Courses` and `Enrolments`. It demonstrates advanced SQL querying techniques such as JOINs, GROUP BY, HAVING clauses, and handling NULL values to analyze course enrollment data.

The objective is to enhance data relationships by linking students to courses, perform complex queries to reveal enrollment details, and gain insights into student-course associations.

## Tasks Performed

1. Created `Courses` and `Enrolments` tables, establishing foreign key relationships to `Students`.
2. Inserted sample data into `Courses` and `Enrolments` tables.
3. Retrieved lists of students along with their enrolled courses using INNER JOIN.
4. Counted the number of students per course, including courses with zero enrollments, using LEFT JOIN and GROUP BY.
5. Identified students enrolled in multiple courses using the HAVING clause.
6. Found courses with no enrollments using LEFT JOIN with a NULL filter.

## How to Run

1. Use any MySQL client such as MySQL Workbench or phpMyAdmin.
2. Execute the `Task-2.sql` script file step-by-step in the provided order.
3. Verify query outputs after each step to understand the relationships and data processing.
