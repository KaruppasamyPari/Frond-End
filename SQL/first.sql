-- SQL:
-- structured query language 
-- command 
-- mysql,sqllite,postgresql,oracle 
-- DBMS and RDMS 
-- datas will be stored manually like file format or
-- csv format 
-- RDBMS means the data will be stored in table like 
-- structure 
-- (ie)rows and columns 

-- how this query all build with the help of commands:
-- DDL,DML,DCL,TCL
-- DATA DEFINITION LANGUAGE:
-- CREATE,ALTER,TRUNCATE,DROP,RENAME  
-- DATA MANIPULATION LANGUAGE:
-- INSERT,UPDATE,DELETE
-- DATA CONTROL LANGUAGE:
-- SELECT
-- TRANSCATION CONTROL LANGUAGE:
-- COMMIT,ROLLBACK,SAVEPOINT 

-- WHAT IS DATABASE?
-- every data stored in an table format inside the database. 

-- DATA:
-- collection of users meaningful records 

-- database SLA-kk nagar
-- table:
-- employee,students,placement,social  media 
-- name,id,gender,salary,Personal,pf 


-- database SLA-navalur 
-- table:
-- employee,students,placements,social media 
-- database creation

create database sla_kknagar;
use sla_kknagar;

-- table creation 
-- create table tablename(column1datatype,column2datatype...columnNdatatype);

create table Placement(Roll_no int,name varchar(255),course varchar(25));
desc Placement;
-- insert into table values();
insert into Placement values(119,'jeeva','Python'),
(129,'preethi','Java'),(121,'surya','Dotnet'),
(191,'harish','Java'),(141,'santhosh','PHP'),
(110,'karthick','Python');
select * from Placement;


-- variable character holding 255 
-- ascii values
-- american standard code for information and interchange


-- DDL
-- data definiation language
-- create
-- create data base
-- 


use sla_kknagar;
create table st_record(id bigint,name varchar(30),gender char(1));

insert into st_record values(45,'dhiya','F'),(46,'hari','M'),(47,'pari','M');

select * from st_record;
select name from st_record;
select name,id from st_record;

alter table st_record add email_id varchar(15);

update st_record set email_id='dhiya@gmail.com' where id=45;
update st_record set email_id='hari@gmail.com' where id=46;
update st_record set email_id='pari@gmail.com' where id=47;

select * from st_record;

delete from st_record where name='dhiya';

truncate table st_record;

drop table st_record;

drop database sla_kknagar;

show databases;



-- orderby

create database sla_kknagar;
use sla_kknagar;
select * from st_record;
select * from st_record order by id desc;












create table place_depart(id int not null, name varchar(30) unique, course varchar(30));
insert into place_depart values (90,'pari','Python'),(91,'hari','Python'),(92,'pandi','Python'),(93,'bhuvi','Python'),
(94,'prathap','Python'),(95,'suresh','Python'),(96,'rijo','Python'),(97,'jaswanth','Python');

insert into place_depart values(null,'riyaz','aws');
insert into place_depart values(90,'riyaz','aws');
insert into place_depart values(97,null,'Java');

select * from place_depart;

-- constraint is column level constraint it will restrict the row values according to its type of constraints

-- not null constraint:
-- will accept the duplicates but will not accept the null values

-- unique constraint:
-- unique constraint will not allow duplicates but accept the null values

-- check constraint:
-- it ensures that the condition given using check condition is getting satisfied.


create table car(carname varchar(30),price int check(price>=500000));
insert into car values('audi',500000);
insert into car values('Bmw',490000);
insert into car values('Toyata',600000);

select * from car;



-- default container:
-- sets a value for a column is no values is vided upon insertion


create table car1(carname varchar(30),price int,location varchar(15) default 'chennai');
insert into car1 values('audi',500000,default);
insert into car1 values('Bmw',490000,default);
insert into car1 values('Toyata',600000,'coimbatore');

select * from car1;


create table pri_table(id int,name varchar(10),city varchar(15),primary key(id));
insert into pri_table values(1,'Pari','Chennai');
insert into pri_table values(2,'Hari','Coimbatore');
insert into pri_table values(3,'Pandi','Vadapalani');
insert into pri_table values(4,'senior','koyambedu');
insert into pri_table values(5,'Maa','rjpm');

select * from pri_table;
select * from pri_table order by city desc;    

create table fore_table(fid int, fname varchar(10),foreign key(fid)references pri_table(id));
insert into fore_table values(1,'sweetha');
insert into fore_table values(2,'sweetha');
insert into fore_table values(3,'sweetha');
insert into fore_table values(4,'sweetha');
insert into fore_table values(5,'sweetha');
insert into fore_table values(6,'sweetha');  -- Not work because parent table id-5 value illa so ethu work akuthu 

select * from fore_table;




create table department(dept_id int, name varchar(30),primary key (dept_id));

insert into department values(01,'Hari');
insert into department values(02,'Hari');

select * from department;


create table employe(emp_id int, name varchar(30), foreign key(emp_id) references department(dept_id) );


insert into employe values(01,'Hari');
insert into employe values(02,'pari');
insert into employe values(03,'vijay');

select * from employe;

create database harii;
use harii;


create table student(id int,name varchar(20),age int,primary key(id));

desc student;

insert into student values(01,'hari',21);
insert into student values(02,'haraana',22);
insert into student values(03,'haran',23);

select * from student;

create table stand(fid int,fname varchar(20),age int, foreign key (fid) references student(id));





