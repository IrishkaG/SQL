--SQL_DDL
--������ �����.

--������� employees

--������� ������� employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.



create table employees
(id serial primary key,
 employee_name Varchar(50) not null
 );

select*from employees;

insert into employees (employee_name)
values ('���������� �������'),
('������� �������'),
('�������� ����'),
('������ ����'),
('������� �������'),
('������ ����'),
('�������� �������'),
('������� ����'),
('�������� ����'),
('�������� ������'),
('������ �����'),
('����� �������'),
('��������� ������'),
('�������� ��������'),
('������ ���'),
('�������� ����'),
('�������� ������'),
('�������� ������'),
('������ ���'),
('������ ������'),
('���������� ��������'),
('�������� ��������'),
('��������� ������'),
('������ ����'),
('������� �������'),
('���������� ������'),
('�������� �������'),
('�������� ������'),
('���������� �����������'),
('���������� ��������'),
('������ �����'),
('�������� �����'),
('������� �������'),
('������ �����'),
('����� ����'),
('��������� �����'),
('��������� ������'),
('���������� �����'),
('����������� ���������'),
('�������� ����������'),
('�������� �����'),
('�������� ����������'),
('������ ����'),
('������ �������'),
('��������� �����'),
('�������� ���������'),
('������� ��������'),
('��������� ��������'),
('��������� ������'),
('��������� �����'),
('������ �������'),
('��������� ������'),
('������ ������'),
('������� �������'),
('������ ���'),
('������ ������'),
('������ ����'),
('������� �������'),
('������� ���'),
('��������� �������'),
('��������� ������'),
('��������� ������'),
('������� ������'),
('�������� ��������'),
('���������� ������'),
('������� ����'),
('������� ���'),
('��������� �������'),
('������ ����'),
('�������� �����'
);

--������� salary

--������� ������� salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--��������� ������� salary 15-16 ��������:

create table salary 
(id serial primary key,
 monthly_salary int not null
 );

select*from salary;

insert into salary (monthly_salary)
values (1200),
(1300),
(1250),
(1800),
(1500),
(1600),
(1550),
(1450),
(1230),
(1425),
(1650),
(1430),
(850),
(2500),
(600),
(1900);

--������� roles

--������� ������� roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--�������� ��� ������ role_name � int �� varchar(30)
--��������� ������� roles 20 ��������:
create table roles (
id serial primary key,
role_title int unique not null
);

ALTER TABLE roles 
RENAME  column role_title  to role_name;

ALTER TABLE roles ALTER COLUMN role_name DROP NOT NULL; -- ������� NOT null �� ���������� �������  role_name

ALTER TABLE roles 
ALTER COLUMN role_name SET NOT NULL; -- add NOT null

ALTER TABLE roles 
ALTER COLUMN role_name type varchar (30);

select * from roles ;

insert into roles (role_name)
values ('QA_manual_junior'),
('QA_manual_middle'),
('QA_manual_senior'),
('QA_automation_junior'),
('QA_automation_middle'),
('QA_automation_senior'),
('Developer_Java_junior'),
('Developer_Java_middle'),
('Developer_Java_senior'),
('Developer_Python_junior'),
('Developer_Python_middle'),
('Developer_Python_senior'),
('HR'),
('Designer'),
('Manager'),
('CEO'),
('Project_Manager'),
('Developer_JavaScript_junior'),
('Developer_JavaScript_middle'),
('Developer_JavaScript_senior');

--������� roles_employee
--������� ������� roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
--- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--��������� ������� roles_employee ��������:

create table roles_employee (
id serial primary key,
id_employee int not null unique,
id_role int not null,
foreign key (id_employee) references employees (id),
foreign key (id_role) references roles (id));

drop table roles_employee;

select * from roles_employee;

insert into roles_employee (id_employee, id_role)
values (17,8),
(9,6),
(33,10),
(30,15),
(32,13),
(25,11),
(3,14),
(23,9),
(14,6),
(13,5),
(7,4),
(28,7),
(8,1),
(27,20),
(18,3),
(15,6),
(24,18),
(5,12),
(2,11),
(16,5),
(12,7),
(26,14),
(29,10),
(21,13),
(10,3),
(22,19),
(20,10),
(11,9),
(6,17),
(31,1),
(35,15),
(34,3),
(19,1),
(53,15),
(48,6),
(57,7),
(61,9),
(40,5),
(69,8),
(49,11),
(64,13),
(44,11),
(58,12),
(68,4),
(42,10),
(60,2),
(65,14),
(56,14),
(55,7),
(50,3),
(36,12),
(46,8),
(63,5),
(47,4),
(43,13),
(41,11),
(37,1),
(66,06),
(38,10),
(51,15),
(70,9),
(52,6),
(54,2);

--������� employee_salary

--������� ������� employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--��������� ������� employee_salary 40 ��������:
--- � 10 ����� �� 40 �������� �������������� employee_id
--foreign key (id_employee) references employees (id),

create table employee_salary
(id serial primary key,
id_employee int not null unique,
id_salary int not null,
foreign key (id_employee) references employees (id),
foreign key (id_salary) references salary (id));


insert into employee_salary (id_employee, id_salary)
values (17,8),
(9,6),
(33,10),
(30,15),
(32,13),
(25,11),
(3,14),
(23,9),
(14,16),
(13,5),
(7,4),
(28,7),
(8,1),
(27,12),
(18,3),
(15,6),
(24,2),
(5,12),
(2,11),
(16,5),
(12,7),
(26,14),
(29,10),
(21,13),
(10,3),
(22,4),
(20,16),
(11,9),
(6,8),
(31,1),
(35,15),
(34,3),
(19,1),
(53,15),
(48,6),
(57,7),
(61,9),
(40,5),
(69,8),
(49,16),
(64,13),
(44,11),
(58,12),
(68,4),
(42,10),
(60,2),
(65,14),
(56,14),
(55,7),
(50,3),
(36,12),
(46,8),
(63,5),
(47,4),
(43,13),
(41,11),
(37,1),
(66,16),
(38,10),
(51,15),
(70,9),
(52,6),
(54,2);

select * from roles_employee;

-------------------------
-- ������ ����������
begin transaction;
-- �������� �� ���������
SELECT * FROM roles;
-- ���������
alter table roles
add column parking int;
-- �������� ����� ���������
SELECT * FROM roles ;
-- �������� ����������
rollback;
---------------------------------

drop tables roles;



