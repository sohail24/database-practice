Here i m using xampp to launch mysql server
I have installed it in c:\xampp\mysql
go to c:\xampp\mysql\bin 
now launch mysql.exe -u root (in the cmd if u wish to do the command in cmd)


---------------------------------------------
note: SQL (s-e-q-u-e-l or S-Q-L Call It WhatEVER u like ;) )
types : 
DDL (data defintion language) - Create, Alter, Drop, Truncate, Comment, Rename
DML (data manipulation language) - Select, Insert, Update, Delete, merge, call, explain plain, lock table
DCL (data control language) - grant, revoke
TCL (transcaction control language) - Commit, rollback, set transcation, savepoint
---------------------------------------------
commands
---------------------------------------------
show databases;
(it will show the databases in available)
---------------------------------------------
to create database 
create database <databasename>
to get into database
use <databasename>;
eg: create database processor;
    use processor;
---------------------------------------------
after getting into database, to check no. of tables availabe
eg: show tables;
---------------------------------------------
to create table
create table <tablename> (rowname rowtype, rowname2 rowtype2, rowname3 rowtype3);
eg : create table intel (model varchar(255), year int(4), price int);
---------------------------------------------
to display the structure of the table
describe <tablename>
eg : describe intel;
---------------------------------------------
to add / insert records also called as rows 
insert into <tablename> values (data, data2, data3);
eg: insert into intel values ('i7 10750h', 2020, 40000 );
you can add multiple rows using this method
alternate way to add more records (in any order of cloumn value)
eg: insert into intel(price, model, year) values (21000,'i5 10300h',2020);
---------------------------------------------
to display/select records from a table
select * from <tablename>
eg : select * from intel;
output:
+-----------+------+-------+
| model     | year | price |
+-----------+------+-------+
| i7 10750h | 2020 | 40000 |
| i5 10300h | 2020 | 21000 |
+-----------+------+-------+
as previous created one
to diplay selected coloumn
eg : select model,price from intel;
output: 
+-----------+-------+
| model     | price |
+-----------+-------+
| i7 10750h | 40000 |
| i5 10300h | 21000 |
+-----------+-------+
---------------------------------------------
creating 2 tables with primary key and foreign key
note (quick reminder) :
    primary key = a table can have only one primary key(can have multiple field/column but have to give constraints syntax,) and cannot have null value
                  and must be unique
                  eg:CREATE TABLE Persons (
                    ID int NOT NULL,
                    LastName varchar(255) NOT NULL,
                    FirstName varchar(255),
                    Age int,
                    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
                    );
    foreign key = an attribute which is primary key of another table which is used to link two table, and also add constraints
                eg:CREATE TABLE Orders (
                    OrderID int NOT NULL,
                    OrderNumber int NOT NULL,
                    PersonID int,
                    PRIMARY KEY (OrderID),
                    CONSTRAINT PK_PersonOrder FOREIGN KEY (PersonID)
                    REFERENCES Persons(PersonID)
                    );
    
   create table engine(
    chasisno int(10),
    manufacturername varchar(20),
    engineyear varchar(10),
    primary key chasisno
   );
   
   create table bike(
    modelno int(20),
    year int(4),
    price int(10),
    chasis int(10),
    primary key (modelno),
    foreign key (chasis) references engine(chasisno)
   );
