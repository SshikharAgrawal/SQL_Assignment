create table employees(EmpId int,Name varchar(20),Gender varchar(20),Department varchar(20));
insert into employees values(1,'X','Female','Finance');
insert into employees values(2,'Y','Male','IT');
insert into employees values(3,'Z','Male','HR');
insert into employees values(4,'W','Female','IT');

select * from employees;

select Department,count(case when Gender="Male" then 1 end) as Num_of_Male,count(case when Gender="Female" then 1 end) as Num_of_Female from employees group by department;
