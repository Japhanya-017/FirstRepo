--Creating New database
create database Job_Apply;
use Job_Apply;

--Creating New Table
create table EmpDet (ID int, Name varchar(50), Salary int, DOJ date);

--Inserting Values into Table
insert into Empdet
select 100,'Hrithik', 15000, '2020-03-10' union all
select 101,'Khanna', 16000, '2020-05-20' union all
select 102,'Jatendar', 18000, '2021-09-17' union all
select 103,'Rathod', 14000, '2022-12-25' union all
select 104,'Sharma', 13000, '2022-05-28';

--Or Alternate Way to insert Values individually or Collectively into table

insert into EmpDet (ID, Name , Salary, DOJ) 
values (105, 'Sharukh' ,19000,'2021-01-23');

--Renaming Column Name
exec sp_rename 'EmpDet.Name', 'Full_Name';

--Updating Values in Table
update EmpDet set salary=15500 where ID=100;

--Deleting a Single Row
delete EmpDet where Id=105;

--Truncating a Table
truncate table Empdet;

--Renaming Table Name
exec sp_rename 'Empdet' ,'Empdetails';

--Deleting Complete Table
Drop table Empdetails;

--Deleting Databse
drop database  Job_Apply;

