--Таблица пользователей базы данных qa_students_1 -
--Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду.

--.sql файл выгружайте на гит и скидывайте ссылки на проверку.

-- 1. Вывести все поля и все строки. select*from
  select * from students;
-- 2. Вывести всех студентов в таблице select students from 
  select * from students;
--3. Вывести только Id пользователей  select id from
  select id from users;
-- 4. Вывести только имя пользователей select name from
  select "name" from users;
 --5. Вывести только email пользователей select email from
  select email from users;
 --6. Вывести имя и email пользователей select name, email from
  select  s."name", s.email from students s;
 --7. Вывести id, имя, email и дату создания пользователей
  select s.name , s.email, s.created_on from students s; 
 --8. Вывести пользователей где password 12333
  select s.name from students s where s."password" = '12333';
 --9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
  select s.name from students s where s.created_on = cast('2021-03-26 00:00:00' as timestamp);
 --10. Вывести пользователей где в имени есть слово Анна
  select s.name from students s where s.name like ('%Anna%');
 --11. Вывести пользователей где в имени в конце есть 8
  select s.name from students s where s.name like ('%8');
 --12. Вывести пользователей где в имени в есть буква а
  select s.name from students s where s.name like ('%a%');
 --13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
 select s.name from students s where s.created_on = '2021-03-26 00:00:00';
 --14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
 select s.name from students s where s.created_on = '2021-07-12 00:00:00' and s.password = '1m313';
 --15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
 select  s.name from students s where s.created_on ='2021-07-12 00:00:00' and s."name" like ('%Andrey%');
 --16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select  s.name from students s where s.created = '2021-07-12 00:00:00' and s.name like ('%9%')
 --17. Вывести пользователя у которых id равен 110
select  s.name from students s where s.id=110;
 --18. Вывести пользователя у которых id равен 153
select  s.name from students s where s.id=153;
 --19. Вывести пользователя у которых id больше 140
select  s.name from students s where s.id > 140;
 --20. Вывести пользователя у которых id меньше 130
select  s.name from students s where s.id < 130;
 --21. Вывести пользователя у которых id меньше 127 или больше 188
select  s.name from students s where s.id not between 127 and 188;
 --22. Вывести пользователя у которых id меньше либо равно 137
select  s.name from students s where s.id <=137;
 --23. Вывести пользователя у которых id больше либо равно 137
select  s.name from students s where s.id >=137;
 --24. Вывести пользователя у которых id больше 180 но меньше 190
select  s.name from students s where s.id between (180+1) and (190-1);
select  s.name from students s where s.id>180 and s.id<190;
 --25. Вывести пользователя у которых id между 180 и 190
select  s.name from students s where s.id between 180 and 190;
-- 26. Вывести пользователей где password равен 12333, 1m313, 123313
select  s.name from students s where s.password in ('12333','1m313','123313');
 -- 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select  s.name from students s where s.created_on='2020-10-03 00:00:00' or s.created_on='2021-05-19 00:00:00' or s.created_on='2021-03-26 00:00:00';
select  s.name from students s where s.created_on in ('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');
 --28. Вывести минимальный id 
select min(s.id) from students s ; 
 --29. Вывести максимальный.
select max(s.id) from students s ;
 --30.  Вывести количество пользователей
select count (*) stud_count from students ;
 --31 Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select s.id, s.name, s.created_on from students s order by s.created_on 
 --32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select s.id, s.name, s.created_on from students s order by  s.created_on desc;

