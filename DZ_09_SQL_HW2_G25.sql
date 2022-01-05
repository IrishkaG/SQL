
--���� ��� ������-�� ����� ���� ������� �������������� �������, ��������� � �������, �� ������� )


 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
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
 --2. ������� ���� ���������� � ������� �� ������ 2000.
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



 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������.
 -- (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary, es.id_employee  from salary s 
left join employee_salary es on s.id =es.id_salary  
where es.id_employee is null;

 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 select s.monthly_salary, es.id_employee  from salary s 
left join employee_salary es on s.id =es.id_salary  
where es.id_employee is null and s.monthly_salary > 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.

select e.employee_name, es.id_salary from employees e 
left join employee_salary es on e.id = es.id_employee 
where es.id_salary is null;

 --6. ������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id;

 --7. ������� ����� � ��������� ������ Java �������������.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id
where r.role_name like '%Java%' or r.role_name like '%java%';

  --8. ������� ����� � ��������� ������ Python �������������.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id
where r.role_name like '%python%' or r.role_name like '%Python%';

 --9. ������� ����� � ��������� ���� QA ���������.
select e.employee_name, r.role_name  from employees e 
join roles_employee re on re.id_employee = e.id 
join roles r on re.id_role = r.id
where r.role_name like '%QA%' or r.role_name like '%qa%';
 --10. ������� ����� � ��������� ������ QA ���������.
select e.employee_name ,  r.role_name from employees e 
left join roles_employee re on re.id_employee = e.id 
left join roles r on r.id = re.id_role
where r.role_name  like '%QA%' and  r.role_name like '%manual%';

 --11. ������� ����� � ��������� ��������������� QA
select e.employee_name ,  r.role_name from employees e 
left join roles_employee re on re.id_employee = e.id 
left join roles r on r.id = re.id_role
where r.role_name  like '%QA%' and  r.role_name like '%autom%';
 --12. ������� ����� � �������� Junior ������������
select e.employee_name , s.monthly_salary--, r.role_name 
from employees e 
left join employee_salary es on es.id_employee = e.id 
left join salary s on es.id_salary = s.id 
left join roles_employee re on re.id_employee = es.id_employee 
left join roles r on re.id_role = r.id 
where r.role_name like '%junior%';
 --13. ������� ����� � �������� Middle ������������
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on es.id_employee =e.id 
join salary s on es.id_salary =s.id 
join roles_employee re on re.id_employee = e.id 
join roles r on r.id =re.id_role 
where r.role_name like '%middle%';
 --14. ������� ����� � �������� Senior ������������
select e.employee_name , s.monthly_salary-- , r.role_name 
from employees e, employee_salary es, salary s , roles_employee re , roles r 
where e.id = es.id_employee and es.id_salary=s.id and re.id_employee =e.id and re.id_role =r.id 
and r.role_name like '%senior%';
 --15. ������� �������� Java �������������
select e.employee_name , s.monthly_salary--, r.role_name 
from employees e 
join employee_salary es on es.id_employee =e.id 
join salary s on es.id_salary =s.id 
join roles_employee re on re.id_employee = e.id 
join roles r on r.id =re.id_role 
where r.role_name like '%Java%';
 --16. ������� �������� Python �������������
select e.employee_name , s.monthly_salary--, r.role_name 
from employees e 
join employee_salary es on es.id_employee =e.id 
join salary s on es.id_salary =s.id 
join roles_employee re on re.id_employee = e.id 
join roles r on r.id =re.id_role 
where r.role_name like '%Python%';

 --17. ������� ����� � �������� Junior Python �������������

select e.employee_name , s.monthly_salary-- , r.role_name 
from employees e, employee_salary es, salary s , roles_employee re , roles r 
where e.id = es.id_employee and es.id_salary=s.id and re.id_employee =e.id and re.id_role =r.id 
and r.role_name like '%junior%' and  r.role_name like '%Python%';

 --18. ������� ����� � �������� Middle JS �������������
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
where r.role_name  like '%middle%' and r.role_name like'%J%S%';
 --19. ������� ����� � �������� Senior Java �������������
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
where r.role_name  like '%senior%' and r.role_name like'%Java%';
 --20. ������� �������� Junior QA ���������
select e.employee_name , s.monthly_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
where r.role_name  like '%junior%' and r.role_name like'%QA%';
 --21. ������� ������� �������� ���� Junior ������������
select avg(s.monthly_salary) avg_salary --, r.role_name 
from employees e 
join employee_salary es on e.id = es.id_employee 
join roles_employee re on e.id =re.id_employee and re.id_employee =es.id_employee 
join salary s on s.id =es.id_salary 
join roles r on r.id =re.id_role 
group by r.role_name 
having r.role_name  like '%junior%' ;

--22. ������� ����� ������� JS �������������
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

 --23. ������� ����������� �� QA ���������

 --24. ������� ������������ �� QA ���������
 --25. ������� ���������� QA ���������
 --26. ������� ���������� Middle ������������.
 --27. ������� ���������� �������������
 --28. ������� ���� (�����) �������� �������������.
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000