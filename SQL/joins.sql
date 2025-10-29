-- joins:
-- means which is used to combine two or more tables with the based on the common column values.
-- rules for joins:
-- 1,common column name must be their 
-- 2, datatype must be same for both the tables 
-- types of joins: 
-- 1,inner join:common values will be displayed in both the tables
-- 2,full outer join 
-- right outer join:
-- it will display all records in the right side table and matched records in the left side table
-- left outer join:
-- it will display all records in the left side table and matched records in the 
-- right side table.
-- full outer join:(with the help of union can do it)
-- both the table records with uncommon values will be shown.

 -- inner join Syntax
--  select column1,column2... columnend from first tablename inner join second tablename  ON tableone.column name = tabletwo.column name;
create database pari;
use pari;
create table airports( ID int not null,NAME varchar(20) not null, AGE int not null, ADDRESS char(25),SALARY decimal(18,2),primary key(id));

insert into airports values
(1,'ramesh',32,'ahmedabad',2000.00),
(2,'khilan',25,'delhi',1000.00),
(3,'kaushik',23,'kota',1300.00),
(4,'chaitali',25,'mumbai',4500.00),
(5,'hardik',27,'bhopal',7800.00),
(6,'komal',22,'hydrabad',9999.00),
(7,'muffy',24,'laknow',6500.00);

create table nationalairports(OID int not null, DATA varchar(20) not null,airport_id int not null,AMOUNT decimal(18,2));

select * from airports;
select * from nationalairports;

insert into nationalairports values
(102,'2009-10-08 00:00:00',3,3000.00),
(100,'2009-10-08 00:00:00',3,1500.00),
(101,'2009-10-08 00:00:00',2,5000.00),
(103,'2008-10-08 00:00:00',4,2000.00);

select * from airports inner join nationalairports ON airports.ID = nationalairports.airport_ID;

select ID,NAME,AMOUNT from airports left join nationalairports ON airports.ID = nationalairports.airport_ID;

select OID, airport_id from nationalairports right join airports ON airports.ID = nationalairports.airport_ID;


-- Joins:-
 
 -- Joins mean which is ued to combine two or more tables with the based on the common coum values
 
 -- Rules for Joins:-
 -- 1. Common column name ust be their
 -- 2. datatype must be same for both the tables
 
 -- Types of Joins:
 -- 1. Inner Joins
 -- 2. Full outer join
 -- Right outer join
 -- It will display all records in the right side table and matched records in the left side table
 -- Left outer join:
 -- It will display all records in the left side table and matched records in the 
--  Full outer join:(with help of union can do it)

-- Inner Joins Syntax:-
-- select column1,column2...n first table name inner JOin  Second table two inner join
-- ON table1.colum name = table2. column Name 

create database tt ;
use tt;

create table airports(
id int not null, 
Name varchar (20) Not null,
Age int not Null,
Adderess Char (25),
Salary decimal (28,2),
Primary key (id));

insert into airports values (1,'Ramesh',32,'Ahemedabad',2000.00),
(2,'Khilan',25,'Delhi',1500.00),(3,'Ramesh',32,'Ahemedabad',2000.00),
(4,'Kasuhik',23,'Kota',2200.00),(5,'Ramesh',36,'Mumbai',6500.00),
(6,'Ramesh',32,'Ahemedabad',2000.00),(7,'Ramesh',32,'Inodre',10000.00);

create table nationalairports (
Oid int not null,
Date varchar (20) not null,
airport_id int not null,
Amount decimal (18,2)
);

select * from airports;
select * from nationalairports;

insert into  nationalairports values
(101, '2009-10-08 00:00:00', 3, 3000.00),
(102, '2009-10-08 00:00:00', 3, 6000.00),
(103, '2009-10-11 00:00:00', 3, 5000.00),
(104, '2008-10-05 00:00:00', 4, 4000.00);

select*
from airports
inner join nationalairports
ON airports.id = nationalairports.airport_id;

select id, name, Amount, Date
From airports
left join nationalairports
ON airports.id = nationalairports.airport_id;

-- Limit clause is used to specify the no of rows you want - to return from your query.
-- 
-- sytax:-
-- select col1,col2 fromt tablename limit number;

select * from airprots limit 2;
select * from airports order by name desc limit 3;

drop table custi;
create table custi(customerid int,first_name varchar (10) primary key, lastname varchar (10) unique,email varchar(10));

insert into custi values(1,'frey','fish',null,'frey@g.com');
insert into custi values(2,'lary','boo','osnd','frey@g.com');
insert into custi values(3,'frey','fish',null,'frey@g.com');
insert into custi values(1,'frey','fish',null,'frey@g.com');
insert into custi values(1,'frey','fish',null,'frey@g.com');

select * from custi;
show index from custi;
show index  from  airports;


-- Index a used to find value with a spefic column more quickly
-- My sql normaly sercher as secaniuanaly thourght the colum 
-- The larger the colum more exponces the operation
-- Update take more time select take less time




