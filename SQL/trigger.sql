-- Triggers:
-- A trigger is a special type of stored procedure that automatically
-- runs when an event occurs in the database server.
-- in triggers also we have set of sequence statements 
-- any changes or modifications made in database triggers are executed.
-- example:
-- new data is getting inserted in a emp table we need to send a
-- welcome email
-- 2,order purchase confirmation email has to be done.
-- types of triggers:
-- DML Trigger (insert,update,delete)
-- DDL Trigger (create,alter,drop)
-- LOGON Trigger (user session)


create database parii;
use parii;
create table passengers (name varchar(10), id int , address varchar(10),chargers int, primary key (id));

select * from passengers;
insert into passengers values('pari', 324, 'rjpm',5000);
insert into passengers values('hari', 325, 'cbe',6000);
insert into passengers values('pandi', 326, 'mdu',7000);
insert into passengers values('prathap', 327, 'ms',8000);
insert into passengers values('bhuvi', 328, 'usa',9000);


-- syntax for trigger creation:
-- create trigger triggername
-- before/after
-- insert/update/delete from table
-- for each row existing column = new column

create trigger flights
before insert
on passengers
for each row
set new .chargers=new.chargers-2000;


create trigger offer
before insert
on passengers
for each row
set new.chargers=new.chargers/2;             -- or new.chargers-(new.chargers*0.20)



drop trigger IF exists flights;

insert into passengers values('jameer',336,'mdu',10000);
insert into passengers values('hjhj',45,'rere',20000);
select * from passengers;






-- ----------------------------------------------------------------------
create table college_student(name varchar(10),id int,age int,primary key(id));
-- DROP TABLE IF EXISTS college_Student;
select * from college_Student;

create table college_audit(id int,audit_description varchar(100),primary key(id));
-- DROP TABLE IF EXISTS college_audit;

DELIMITER $$

CREATE TRIGGER afterinsertcoll 
AFTER INSERT ON college_Student 
FOR EACH ROW 
BEGIN
    INSERT INTO college_audit 
    VALUES (
        NEW.id,
        CONCAT('A new row inserted ', DATE_FORMAT(NOW(), '%d-%m-%y %h:%i:%s %p'))
    );
END $$

DELIMITER ;

INSERT INTO college_Student VALUES ('man',250,25);

select * from college_Student;
-- ALTER TABLE college_audit MODIFY audit_description VARCHAR(100);


select * from college_audit;

-- ----------------------------------------------------------------------

CREATE TABLE employe (
    id INT,
    name VARCHAR(20),
    DOB DATE,
    PRIMARY KEY(id)
);

INSERT INTO employe VALUES (1, 'Pari', '2004-04-10');
INSERT INTO employe VALUES (2, 'Hari', '2003-12-26');
INSERT INTO employe VALUES (3, 'Bby', '2003-10-15');

CREATE TABLE event (
    id INT,
    bday_description VARCHAR(100),
    PRIMARY KEY(id)
);

DELIMITER $$

CREATE TRIGGER afterinsertemployee
AFTER INSERT ON employe
FOR EACH ROW
BEGIN
    INSERT INTO event
    VALUES (
        NEW.id,
        CONCAT('Happy Birthday ', NEW.name, '! Birthday on ', DATE_FORMAT(NEW.DOB, '%d-%m-%Y'))
    );
END $$

DELIMITER ;

-- Now insert a new employee to test
INSERT INTO employe VALUES (4, 'Karthik', '2002-05-06');

-- View both tables
SELECT * FROM employe;
SELECT * FROM event;


-- ----------------------------------------------------------------------


create table customer (acc_no int primary key, cust_name varchar(20), avail_balance decimal);

insert into customer values(1000,"pari",1520);
insert into customer values(1001,"hari",1570);

create table mini_statement (acc_no int, avail_balance decimal, foreign key(acc_no) references customer(acc_no));

select * from customer;

delimiter //

create trigger update_cus
before update on customer
for each row
begin 
insert into mini_statement values(old.acc_no, old.avail_balance);
end; // 

delimiter ;
update customer set avail_balance = avail_balance+2000 where acc_no=1000;
update customer set avail_balance = avail_balance+2000 where acc_no=1001;

select * from mini_statement;
select * from customer;







