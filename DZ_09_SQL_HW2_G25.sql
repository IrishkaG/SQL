
--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )


 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select*from employees;
--1)
select e.employee_name , s.monthly_salary 
from employees e
left join employee_salary es on es.id_employee = e.id 
left join salary s on s.id =es.id_salary 
where s.monthly_salary is not null; 
--2)
select e.employee_name , s.monthly_salary 
from employees e
join employee_salary es on es.id_employee = e.id 
join salary s on s.id =es.id_salary
 --2. Вывести всех работников у которых ЗП меньше 2000.
--1)
select e.employee_name , s.monthly_salary 
from employees e
left join employee_salary es on es.id_employee = e.id 
left join salary s on s.id =es.id_salary
where s.monthly_salary <2000

--2)
select e.employee_name , s.monthly_salary
from employees e, employee_salary es, salary s  
where e.id = es.id_employee and es.id_salary =s.id and s.monthly_salary <2000;



 --3. Вывести все зарплатные позиции, но работник по ним не назначен.
 -- (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary, es.id_employee  from salary s 
left join employee_salary es on s.id =es.id_salary  
where es.id_employee is null;

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select s.monthly_salary, es.id_employee  from salary s 
left join employee_salary es on s.id =es.id_salary  
where es.id_employee is null and s.monthly_salary > 2000;

--5. Найти всех работников кому не начислена ЗП.

select e.employee_name, es.id_salary from employees e 
left join employee_salary es on e.id = es.id_employee 
where es.id_salary is null;

 --6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id;

 --7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id
where r.role_name like '%Java%' or r.role_name like '%java%';

  --8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id
where r.role_name like '%python%' or r.role_name like '%Python%';

 --9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id
where r.role_name like '%QA%' or r.role_name like '%qa%';
 --10. Вывести имена и должность ручных QA инженеров.
select e.employee_name ,  r.role_name from employees e 
left join roles_employee re on re.id_employee = e.id 
left join roles r on r.id = re.id_role
where r.role_name  like '%QA%' and  r.role_name like '%manual%';

 --11. Вывести имена и должность автоматизаторов QA
select e.employee_name ,  r.role_name from employees e 
left join roles_employee re on re.id_employee = e.id 
left join roles r on r.id = re.id_role
where r.role_name  like '%QA%' and  r.role_name like '%autom%';
 --12. Вывести имена и зарплаты Junior специалистов
select e.employee_name , s.monthly_salary--, r.role_name 
from employees e 
left join employee_salary es on es.id_employee = e.id 
left join salary s on es.id_salary = s.id 
left join roles_employee re on re.id_employee = es.id_employee 
left join roles r on re.id_role = r.id 
where r.role_name like '%junior%';
 --13. Вывести имена и зарплаты Middle специалистов
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on es.id_employee =e.id 
join salary s on es.id_salary =s.id 
join roles_employee re on re.id_employee = e.id 
join roles r on r.id =re.id_role 
where r.role_name like '%middle%';
 --14. Вывести имена и зарплаты Senior специалистов
select e.employee_name , s.monthly_salary-- , r.role_name 
from employees e, employee_salary es, salary s , roles_employee re , roles r 
where e.id = es.id_employee and es.id_salary=s.id and re.id_employee =e.id and re.id_role =r.id 
and r.role_name like '%senior%';
 --15. Вывести зарплаты Java разработчиков
select e.employee_name , s.monthly_salary--, r.role_name 
from employees e 
join employee_salary es on es.id_employee =e.id 
join salary s on es.id_salary =s.id 
join roles_employee re on re.id_employee = e.id 
join roles r on r.id =re.id_role 
where r.role_name like '%Java%';
 --16. Вывести зарплаты Python разработчиков
select e.employee_name , s.monthly_salary--, r.role_name 
from employees e 
join employee_salary es on es.id_employee =e.id 
join salary s on es.id_salary =s.id 
join roles_employee re on re.id_employee = e.id 
join roles r on r.id =re.id_role 
where r.role_name like '%Python%';

 --17. Вывести имена и зарплаты Junior Python разработчиков

select e.employee_name , s.monthly_salary-- , r.role_name 
from employees e, employee_salary es, salary s , roles_employee re , roles r 
where e.id = es.id_employee and es.id_salary=s.id and re.id_employee =e.id and re.id_role =r.id 
and r.role_name like '%junior%' and  r.role_name like '%Python%';

 --18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
where r.role_name  like '%middle%' and r.role_name like'%J%S%';
 --19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
where r.role_name  like '%senior%' and r.role_name like'%Java%';
 --20. Вывести зарплаты Junior QA инженеров
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
where r.role_name  like '%junior%' and r.role_name like'%QA%';
 --21. Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary) avg_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
group by r.role_name 
having r.role_name  like '%junior%' ;

--22. Вывести сумму зарплат JS разработчиков
--1)
select sum (t1.m_s), t1.title
from (select s.monthly_salary as m_s, case when r.role_name like '%J%S%' then 'JS'
                               else 'other'
                               end title
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role) as t1
group by t1.title 
having t1.title  like 'JS' ;
--2)
select sum(s.monthly_salary) --,r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role
group by r.role_name 
having r.role_name  like '%J%S%' ;

 --23. Вывести минимальную ЗП QA инженеров

 --24. Вывести максимальную ЗП QA инженеров
 --25. Вывести количество QA инженеров
 --26. Вывести количество Middle специалистов.
 --27. Вывести количество разработчиков
 --28. Вывести фонд (сумму) зарплаты разработчиков.
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000