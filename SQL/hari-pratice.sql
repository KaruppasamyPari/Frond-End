create database hari;
use hari;
create table student ( Name varchar(20),id int,Gender char);
desc student;

insert into student values ('Hari',01,'M'),('Pari',02,'M'),('Pandi',09,'F');

select * from student;
select name from student;

alter table student add gmail varchar(30);

update student set gmail='hari@gmail.com' where id=01;
update student set gmail='pari@gmail.com' where id=02;
update student set gmail='pandi@gmail.com' where id=09;

delete from student where id=09;
select * from student order by id desc;

truncate student;

drop table student;

show databases;

drop database hari;

create database hari;
use  hari;

create table employee (emp_id int ,emp_name varchar(20), salary dec, dept_id int);

insert into employee values(01,'hari',12000,11),(02,'pari',12000,13),(03,'ram',12000,13);

desc employee;

select * from employee;
