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
