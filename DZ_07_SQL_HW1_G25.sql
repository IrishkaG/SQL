--������� .sql ���� � ������� ��� ������ �������� �������� sql ������ ������� �������� �������.

--.sql ���� ���������� �� ��� � ���������� ������ �� ��������.

-- 1. ������� ��� ���� � ��� ������.
  select * from students;
-- 2. ������� ���� ��������� � ������� 
  select * from students;
-- 3. ������� ������ Id �������������
  select id from users;
 --4. ������� ������ ��� �������������
  select "name" from users;
 --5. ������� ������ email �������������
  select email from users;
 --6. ������� ��� � email �������������
  select  s."name", s.email from students s;
 --7. ������� id, ���, email � ���� �������� �������������
  select s.name , s.email, s.created_on from students s; 
 --8. ������� ������������� ��� password 12333
  select s.name from students s where s."password" = '12333';
 --9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
  select s.name from students s where s.created_on = cast('2021-03-26 00:00:00' as timestamp);
 --10. ������� ������������� ��� � ����� ���� ����� ����
  select s.name from students s where s.name like ('%Anna%');
 --11. ������� ������������� ��� � ����� � ����� ���� 8
  select s.name from students s where s.name like ('%8');
 --12. ������� ������������� ��� � ����� � ���� ����� �
  select s.name from students s where s.name like ('%a%');
 --13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
 select s.name from students s where s.created_on = '2021-03-26 00:00:00';
 --14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
 select s.name from students s where s.created_on = '2021-07-12 00:00:00' and s.password = '1m313';
 --15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
 select  s.name from students s where s.created_on ='2021-07-12 00:00:00' and s."name" like ('%Andrey%');
 --16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select  s.name from students s where s.created = '2021-07-12 00:00:00' and s.name like ('%9%')
 --17. ������� ������������ � ������� id ����� 110
select  s.name from students s where s.id=110;
 --18. ������� ������������ � ������� id ����� 153
select  s.name from students s where s.id=153;
 --19. ������� ������������ � ������� id ������ 140
select  s.name from students s where s.id > 140;
 --20. ������� ������������ � ������� id ������ 130
select  s.name from students s where s.id < 130;
 --21. ������� ������������ � ������� id ������ 127 ��� ������ 188
select  s.name from students s where s.id not between 127 and 188;
 --22. ������� ������������ � ������� id ������ ���� ����� 137
select  s.name from students s where s.id <=137;
 --23. ������� ������������ � ������� id ������ ���� ����� 137
select  s.name from students s where s.id >=137;
 --24. ������� ������������ � ������� id ������ 180 �� ������ 190
select  s.name from students s where s.id between (180+1) and (190-1);
select  s.name from students s where s.id>180 and s.id<190;
 --25. ������� ������������ � ������� id ����� 180 � 190
select  s.name from students s where s.id between 180 and 190;
 --26. ������� ������������� ��� password ����� 12333, 1m313, 123313
select  s.name from students s where s.password in ('12333','1m313','123313');
 --27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select  s.name from students s where s.created_on='2020-10-03 00:00:00' or s.created_on='2021-05-19 00:00:00' or s.created_on='2021-03-26 00:00:00';
select  s.name from students s where s.created_on in ('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');
 --28. ������� ����������� id 
select min(s.id) from students s ; 
 --29. ������� ������������.
select max(s.id) from students s ;
 --30. ������� ���������� �������������
select count (*) stud_count from students ;
 --31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select s.id, s.name, s.created_on from students s order by s.created_on 
 --32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select s.id, s.name, s.created_on from students s order by  s.created_on desc;

