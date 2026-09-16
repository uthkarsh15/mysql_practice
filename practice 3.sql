create database school;
use school;

create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student
values
(101,"anil",78,"c","pune"),
(102,"bhumika",93,"a","mumbai"),
(103,"chetan",85,"b","mumbai"),
(104,"dhruv",96,"a","delhi"),
(105,"emanuel",12,"f","delhi"),
(106,"farah",82,"b","delhi");

select * from student;

alter table student 
add column age int;

alter table student
drop column age;

alter table student
add column age int not null default 19;

alter table student
modify column age varchar(2);

alter table student
change age stu_age int;

insert into student
(rollno, name, marks, stu_age)
values
(107, "gargi", 68, 100);

alter table student
drop column stu_age;

alter table stu
rename to student;

truncate table student;

alter table student
change name full_name varchar(50);

delete from student
where marks<80;

alter table student
drop column grade;

select * from student;

select avg(marks)
from student;

select full_name, marks
from student
where marks>(select avg(marks) from student);

select rollno, full_name
from student
where rollno in (select rollno from student where rollno%2=0);

select max(marks)
from (select * from student where city="delhi") as temp;

select max(marks)
from student
where city="mumbai";

select (select max(marks) from student), full_name
from student;

create view view1 as
select rollno, full_name, marks from student;

select * from view1
where marks>90;

drop view view1;
