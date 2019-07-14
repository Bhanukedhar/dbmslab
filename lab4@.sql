create table employee(
emp_id varchar(15),
ename varchar(20),
date_of_birth date,
salary numeric(9,2),
primary key(emp_id))

--drop table employee;
--select * from employee;
insert into employee values(
'cse D','jishnu','23 mar 2000',45000),
('cse A','satwik','12 jun 2010',50000),
('cse C','marii','21 nov 2012',25000),
('cse B','gopa','14 feb 1999',80000);

select * from employee;
update employee set salary=4567.945 where emp_id='cse D';
select * from employee;

/*q1*/select ceiling(salary) from employee;
/*q2*/select floor(salary) from employee;
/*q3*/select round(salary,2) from employee;
/*q4*/select power(salary,2) from employee;
/*q5*/select lower(ename) from employee;
/*q6*/select ename, length(ename) from employee;
/*q7*/select lpad(ename, 20, '*') from employee ;
/*q8*/select rpad(ename, 20, '*') from employee;
/*q9*/select rtrim(ename, ' ') from employee;
/*q10*/select ltrim(ename, ' ') from employee;
/*q11*/select substring(ename, 2,3) from employee;
/*q12*/select to_char(date_of_birth, 'DD/MM/YYY') from employee;
/*q13*/select to_date('20170103','YYYYMMDD');
/*q14*/select to_date('2017 Feb 20','YYYY Mon DD');
/*q15*/select ename from employee where extract(mon from date_of_birth) = 11;

create table departmentlist(
depname varchar(20),
location varchar(25),
budget numeric(5,2),
primary key (depname));

create table instructor(
id varchar(10),
iname varchar(20),
designation varchar(20),
salary numeric(5,2),
depname varchar(20),
primary key(id));

create table course(
ccode varchar(20),
ctitle  varchar(20),
credits numeric(5,2),
depname varchar(20),
primary key(ccode));

create table section(
sectionid varchar(20),
ccode  varchar(20) references course,
sem varchar(10),
year numeric(5,2),
room_no numeric(5,3), 
primary key(sectionid));

create table teach(
id varchar(20),
sectionid varchar(20) references section,
ccode  varchar(20) references course,
sem varchar(10) references section,
year numeric(5,2) references section,
primary key (id));

create table student(
sid varchar (20),
sname varchar(20),
date_of_birth date,
depname varchar(20),
primary key (sid));

create table Take(
sid varchar(20) references student,
sectionid varchar(20) references section,
ccode  varchar(20) references course,
sem varchar(10) references section,
year numeric(5,2) references section,
grade numeric(5,2),
primary key(sid));

