drop table Employee cascade;
create table Employee (
employee_id varchar(15),
employee_name varchar(30),
DOB date,
salary numeric(9,2)
);
insert into Employee (employee_id,employee_name,DOB,salary) values ('1','vadla','16-sep-1999',70000),
('2','niranjan','16-sep-1999',60000),
('3','vara','16-jan-2000',90000),
('4','prasad','16-feb-2001',40000),
('5','niru','16-mar-200',50000),
('6','wireshark','31-dec-1999',88020.5666),
('7','vaishak','31-dec-1999',85150.9666),
('8','achyuth','31-dec-1999',81522.5768),
('9','AKG','31-dec-1999',89654.8779),
('10','Bhanu_kedhar','19-sep-1999',70000.8779);




/*1*/  select ceiling(salary) from Employee;
/*2*/  select floor(salary) from Employee;
/*3*/  select round(salary,2) from Employee;
/*4*/  select pow(salary,2) as squared_salary from Employee;
/*5*/  select lower(employee_name) from Employee;
/*6*/  select employee_name, length(employee_name) from Employee;
/*7*/  select lpad(employee_name,30,'*') from Employee;
/*8*/  select rpad(employee_name,30,'*') from Employee;
/*9*/  select rtrim(employee_name,'a')from Employee;
/*10*/ select ltrim(employee_name,'a')from Employee;
/*11*/ select SUBSTRING(employee_name,2,3) from Employee;
/*12*/ select to_char(DOB,'DD/MM/YYYY') from Employee;
/*13*/ select to_date('19990919','YYYYMMDD');
/*14*/ select to_date('2017 Feb 20','YYYY Mon DD');
/*15*/

