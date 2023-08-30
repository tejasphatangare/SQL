create table student_grades(
stud_id int not null unique,
stud_name varchar(50),
stud_grades varchar(10),
stud_marks int
);

insert into student_grades(stud_id,stud_name,stud_grades,stud_marks)
values
(1,'Tejas','A',89),
(2,'sai','O',91),
(3,'ram','O',89),
(4,'mayuri','A',84),
(5,'sneha','0',97),
(6,'sumit','B',78)
;

SELECT * FROM student_grades;

-- --AGGREGATE FUNCTIONS 
select max(stud_marks) from student_grades;
select min(stud_marks) from student_grades;
select avg(stud_marks) from student_grades;
select round(avg(stud_marks),2) from student_grades;
select sum(stud_marks) from student_grades as TotalMarks;

-- STRING FUNCTIONS IN SQL
select upper(stud_name) from student_grades;
select lower(stud_name) from student_grades;
select length(stud_name),stud_name from student_grades;
select substring(stud_name,1,3),stud_name from student_grades;
select concat(stud_grades,stud_marks) from student_grades;
select replace(stud_name,'sumit','amit') from student_grades;

select * from student_grades
where stud_marks>=90 or stud_grades="A";

select * from student_grades
order by stud_name ASC;

select * from student_grades
order by stud_marks ASc;

select distinct stud_name from student_grades;

-- SQL OPERATORS
select * from student_grades
where stud_marks between 80 AND 90;






