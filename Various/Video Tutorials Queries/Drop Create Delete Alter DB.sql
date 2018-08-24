CREATE DATABASE SampleDatabase; 
ALTER DATABASE SampleDatabase MODIFY NAME = SampleDB;

/* ALTER DATABASE SampleDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
ALTER DATABASE SampleDB SET MULTI_USER WITH ROLLBACK IMMEDIATE; */ 

CREATE TABLE Gender 
(
	ID int NOT NULL PRIMARY KEY,
	Gender nvarchar(50) NOT NULL
)

CREATE TABLE Person 
(
	ID int NOT NULL PRIMARY KEY,
	Name nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	GenderId int 
)

Alter Table Person add constraint Person_GenderID_FK 
Foreign Key (GenderId) references Gender (ID) 


Use SampleDB; 

insert into Gender(ID, Gender) values (1, 'Male');
insert into Gender(ID, Gender) values (2, 'Female');
insert into Gender(ID, Gender) values (3, 'Unknown'); 


insert into Person(ID, Name, Email, GenderId) values(1, 'John', 'j@j.com', 1);
insert into Person(ID, Name, Email, GenderId) values(2, 'Ben', 'b@b.com', 1);
insert into Person(ID, Name, Email, GenderId) values(3, 'Sally', 's@s.com', 2);
insert into Person(ID, Name, Email, GenderId) values(4, 'Mary', 'm@m.com', 2);

select * from Gender;
select * from Person;  


/*   */ 
ALTER DATABASE SampleDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
Drop Database SampleDB; 