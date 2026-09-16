show databases;

use college;

show tables;

select * from student;
create table teacher(
id int primary key,
city varchar(50),
age int,
constraint age_check check (age >=18 and city="delhi")
);

create table newtab(
age int check(age >=18)
);

insert into teacher values
(1,"delhi",24);

insert into teacher value(2, "kanpur", 13);