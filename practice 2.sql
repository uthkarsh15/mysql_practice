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

select distinct city from student;

select * from student where marks>80;

select * from student where city="mumbai";

select * from student where marks+10>100;

select * from student where marks>80 and city="mumbai";

select * from student where marks>80 or city="mumbai";

select * from student where marks between 80 and 90;

select * from student where city in ("delhi", "mumbai");

select * from student where city not in ("delhi","mumbai");

select * from student limit 3;

select * from student where marks>75 limit 3;

select * from student order by city asc;
select * from student order by city desc;

select * from student order by city asc limit 3;

select max(marks) from student;
select avg(marks) from student;
select count(name) from student;

select city, count(name)
from student
group by city;

select city,name, count(name)
from student
group by city,name;

select city, avg(marks) from student group by city;

select city, avg(marks) 
from student 
group by city
order by avg(marks);

select grade, count(name)
from student 
group by grade
order by grade; 

select city, count(rollno)
from student
group by city
having max(marks)>90;

select city
from student
where grade="a"
group by city
having max(marks)>90
order by city;

set sql_safe_updates = 0;

update student 
set grade="o"
where grade="a";

update student
set marks=82
where rollno=105;

update student
set grade="b"
where marks between 80 and 90;

update student
set marks=marks+1;

update student
set marks=12
where rollno=105;

delete from student
where marks<33;

select * from student;

create table dept(
id int primary key,
name varchar(50)
);

insert into dept
values
(101, "english"),
(102, "it");

select * from dept;

update dept
set id=103
where id=102;

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id)
references
dept(id)
on update cascade
on delete cascade
);

drop table teacher;

insert into teacher
values
(101, "adam", 101),
(102, "eve", 102);

select * from teacher;