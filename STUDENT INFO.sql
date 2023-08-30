create table student_info(
stud_id int not null primary key unique,
stud_name varchar(50) not null,
stud_age int check(stud_age>=18),
stud_city varchar(50) default'pune',
stud_dept varchar(50),
stud_mob numeric
);

select * from student_info;

insert into student_info(stud_id,stud_name,stud_age,stud_city,stud_dept,stud_mob)
values
(1,'Tejas',19,'sangamner','CSE',7038643242),
(2,'sai',20,'pune','CSF',9116643242),
(3,'ram',21,'akole','CSE',1234543242),
(4,'mayuri',21,'nagar','CSE',9123456782),
(5,'sneha',20,'nashik','AIML',8947453242),
(6,'sumit',20,'mumbai','CSE',9876543210),
(8,'tanaya',19,'dhule','AIML',8459014269);

update student_info
SET stud_name='Tanuja'
where stud_id=8;

alter table student_info
add column email varchar(50);

-- alter table student_info
-- RENAME column email to newdata;

alter table student_info
drop column email;

select * from student_info;

select stud_name,stud_age from student_info
where stud_age>=20 and stud_dept="CSE"; 

delete from student_info
where stud_id=8;

truncate student_grades;
drop table  student_grades;
