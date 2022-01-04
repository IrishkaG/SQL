--SQL_DDL
--Первая часть.

--Таблица employees

--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.



create table employees
(id serial primary key,
 employee_name Varchar(50) not null
 );

select*from employees;

insert into employees (employee_name)
values ('Лаврентьев Рудольф'),
('Суханов Панкрат'),
('Панфилов Алан'),
('Волков Марк'),
('Тихонов Евдоким'),
('Лыткин Алан'),
('Алексеев Варлаам'),
('Денисов Карл'),
('Агафонов Лука'),
('Гаврилов Лазарь'),
('Марков Федор'),
('Попов Никифор'),
('Мельников Руслан'),
('Горбунов Мечислав'),
('Галкин Май'),
('Дорофеев Исак'),
('Шестаков Гордий'),
('Нестеров Родион'),
('Авдеев Май'),
('Исаков Даниил'),
('Владимиров Венедикт'),
('Степанов Корнелий'),
('Третьяков Лазарь'),
('Ковалёв Юлий'),
('Яковлев Харитон'),
('Кондратьев Феликс'),
('Кузнецов Дмитрий'),
('Николаев Август'),
('Владимиров Пантелеймон'),
('Колесников Илларион'),
('Михеев Архип'),
('Степанов Орест'),
('Беляков Назарий'),
('Авдеев Вилли'),
('Буров Петр'),
('Артемьева Нелли'),
('Гаврилова Арьяна'),
('Коновалова Таира'),
('Виноградова Джульетта'),
('Елисеева Анжиолетта'),
('Цветкова Юфеза'),
('Никитина Кармелитта'),
('Гущина Лина'),
('Ершова Неолина'),
('Молчанова Софья'),
('Лобанова Джульетта'),
('Королёва Гертруда'),
('Белоусова Элеонора'),
('Агафонова Гелена'),
('Нестерова Лаура'),
('Жукова Неонила'),
('Игнатьева Милиса'),
('Жукова Сабина'),
('Жданова Татьяна'),
('Фокина Уля'),
('Рогова Мериса'),
('Савина Хана'),
('Костина Варвара'),
('Маркова Фия'),
('Белозёрова Сусанна'),
('Кузнецова Эллина'),
('Игнатьева Милена'),
('Сысоева Авигея'),
('Дроздова Виталина'),
('Герасимова Инесса'),
('Иванова Дана'),
('Авдеева Ева'),
('Игнатьева Надежда'),
('Фокина Лада'),
('Кошелева Алира'
);

--Таблица salary

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15-16 строками:

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

--Таблица roles

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:
create table roles (
id serial primary key,
role_title int unique not null
);

ALTER TABLE roles 
RENAME  column role_title  to role_name;

ALTER TABLE roles ALTER COLUMN role_name DROP NOT NULL; -- Удвлить NOT null из параметров колонки  role_name

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

--Таблица roles_employee
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee строками:

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

--Таблица employee_salary

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
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
-- начать транзакцию
begin transaction;
-- проверка до изменений
SELECT * FROM roles;
-- изменения
alter table roles
add column parking int;
-- проверка после изменений
SELECT * FROM roles ;
-- отменить транзакцию
rollback;
---------------------------------

drop tables roles;



