Here i m using xampp to launch mysql server
I have installed it in c:\xampp\mysql
go to c:\xampp\mysql\bin 
now launch mysql.exe -u root (in the cmd if u wish to do the command in cmd)

commands
---------------------------------------------
show databases;
(it will show the databases in available)
---------------------------------------------
to create database 
create database <databasename>
to get into database
use <databasename>;
eg:
create database processor;
use processor;
---------------------------------------------
after getting into database, to check no. of tables availabe
show tables;
---------------------------------------------
to create table
create table <tablename> (rowname rowtype, rowname2 rowtype2, rowname3 rowtype3);
eg : 
create table intel (model varchar(255), year int(4), price int);
---------------------------------------------
to display the structure of the table
describe <tablename>
eg : describe intel;
---------------------------------------------
