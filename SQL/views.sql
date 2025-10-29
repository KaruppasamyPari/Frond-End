-- views means a vitrual table
-- views used to restrict the particular data to other users.
-- more than one views can be created for a table
-- view can able to create, upload and delete.
-- views cannot able to be inserted.

-- Syntax:
-- select views viewname as select column1,column2...

create database pari;
use pari;

create table rec (id int, name varchar(10),age int, location varchar(10),marks int, course varchar(10));

insert into rec values(1,'mukesh',25,'chennai',85,'python'),(2,'harish',27,'banglore',99,'dotnet'),
(3,'sindu',24,'selam',94,'aws'),(4,'harini',26,'coimbatore',88,'oracle'),(5,'benjamin',27,'trichy',74,'testing'),
(6,'siva',22,'chennai',99,'java');


select * from rec;

create view stud as select name,marks,course from rec;     
-- student access
select * from stud;
create view samv as select name,id from rec;
select * from samv;

-- update views
 update samv set name='MUKESH' where name='mukesh';
select * from samv;

delete from samv where name='MUKESH';
select * from samv;

-- union and union all

create table student(id int , fname varchar(20), phoneno bigint,age int);

insert into student values(1,'abc',123456789,13),
(2,'def',234567890,25),(3,'ghi',987654321,23),
(4,'jkl',098765432,24);

create table teacher (id int, tname varchar(20), gender char(1),age int);

 insert into teacher values(1,'mno','f',20),
 (2,'mno','f',20),(3,'mno','f',20),(4,'mno','f',20),
 (5,'mno','f',20);
 

 select * from student;
 select * from teacher;
 
 select age from student union select age from teacher;
 -- union will given only unique values
 
 select age from student union all select age from teacher;
 -- lwill include duplicates




-- placement teram from sla
-- oustide required's

create database PM;

create table PMs(SNo int, company varchar(20),location varchar(20),salary bigint);

insert into PMs values (1, 'BHUVI','cheenai',1000000),(2, 'Zoho','cheenai',1000000),
(3, 'TCS','cheenai',1000000),(4, 'HCL','cheenai',1000000),(5, 'TECH M','cheenai',1000000);

select * from PMs;


-- views means a virtual table 
-- view used to restrict the particular data to other users.
-- More than one views can be created for a table.
-- view can able to create,update and delete 
-- views cannot able to be inserted
-- syntax:
-- select views viewname as select column1,column2...
create database tt;
use tt;
create table rec1 (id int,name varchar(10),age int,location varchar(10),marks int,course varchar(10));
drop rec;
insert into rec1 values(1,'mukesh',25,'chennai',85,'python'),
(2,'harish',27,'banglore',99,'dotnet'),(3,'sindhu',24,'salem',94,'aws'),
(4,'harini',26,'coimbatore',88,'oracle'),(5,'benjamin',27,'trichy',74,'testing'),
(6,'siva',22,'erode',71,'devops');

create view v1 as select name,marks,course from rec1; -- student access 
select * from rec1; -- employee access 
select * from v1;
create view samv as select name,id from rec1;
select * from samv;
-- update views 

update samv set name ='MUKESH' where name='mukesh';
select * from samv;

delete from samv where name='MUKESH';
select * from rec1;

drop view samv;
 
-- union and union all
create table student(id int,fname varchar(20),phoneno bigint,age int); 
insert into student values(1,'abc',7485961236,25),
(2,'hhh',8574961236,27),(3,'yuyu',9685741258,24);

create table teacher(id int,name varchar(20),gender char(1),age int);
insert into teacher values(4,'erer','M',25),
(3,'trtr','M',27),(4,'qwqwq','F',35);

select age from student union select age from teacher;
-- union will given only unique values 

select age from student union all select age from teacher;
-- will include duplicates 

