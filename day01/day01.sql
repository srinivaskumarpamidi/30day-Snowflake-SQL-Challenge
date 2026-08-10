create user d1
password='YOUR_PASSWORD'
LOGIN_NAME='d1'
default_role=public
must_change_password=true;
create user d2
password='YOUR_PASSWORD'
LOGIN_NAME='d2'
default_role=public
must_change_password=true;
create user d3
password='YOUR_PASSWORD'
LOGIN_NAME='d3'
default_role=public
must_change_password=true;
create user d4
password='YOUR_PASSWORD'
LOGIN_NAME='d4'
default_role=public
must_change_password=true;
create user d5
password='YOUR_PASSWORD'
LOGIN_NAME='d5'
default_role=public
must_change_password=true;
create user d6
password='YOUR_PASSWORD'
LOGIN_NAME='d6'
default_role=public
must_change_password=true;
create user d7
password='YOUR_PASSWORD'
LOGIN_NAME='d7'
default_role=public
must_change_password=true;
create user d8
password='YOUR_PASSWORD'
LOGIN_NAME='d8'
default_role=public
must_change_password=true;
create user d9
password='YOUR_PASSWORD'
LOGIN_NAME='d9'
default_role=public
must_change_password=true;
create user d10
password='YOUR_PASSWORD'
LOGIN_NAME='d10'
default_role=public
must_change_password=true;
create user d11
password='YOUR_PASSWORD'
LOGIN_NAME='d11'
default_role=public
must_change_password=true;
create user d12
password='YOUR_PASSWORD'
LOGIN_NAME='d12'
default_role=public
must_change_password=true;
create user d13
password='YOUR_PASSWORD'
LOGIN_NAME='d13'
default_role=public
must_change_password=true;
create user d14
password='YOUR_PASSWORD'
LOGIN_NAME='d14'
default_role=public
must_change_password=true;
create user d15
password='YOUR_PASSWORD'
LOGIN_NAME='d15'
default_role=public
must_change_password=true;
create user d16
password='YOUR_PASSWORD'
LOGIN_NAME='d16'
default_role=public
must_change_password=true;
create user d17
password='YOUR_PASSWORD'
LOGIN_NAME='d17'
default_role=public
must_change_password=true;
create user d18
password='YOUR_PASSWORD'
LOGIN_NAME='d18'
default_role=public
must_change_password=true;
create user d19
password='YOUR_PASSWORD'
LOGIN_NAME='d19'
default_role=public
must_change_password=true;
create user d20
password='YOUR_PASSWORD'
LOGIN_NAME='d20'
default_role=public
must_change_password=true;
create user t1
password='YOUR_PASSWORD'
LOGIN_NAME='t1'
default_role=public
must_change_password=true;
create user t2
password='YOUR_PASSWORD'
LOGIN_NAME='t2'
default_role=public
must_change_password=true;
create user t3
password='YOUR_PASSWORD'
LOGIN_NAME='t3'
default_role=public
must_change_password=true;
create user t4
password='YOUR_PASSWORD'
LOGIN_NAME='t4'
default_role=public
must_change_password=true;
create user t5
password='YOUR_PASSWORD'
LOGIN_NAME='t5'
default_role=public
must_change_password=true;
create user t6
password='YOUR_PASSWORD'
LOGIN_NAME='t6'
default_role=public
must_change_password=true;
create user t7
password='YOUR_PASSWORD'
LOGIN_NAME='t7'
default_role=public
must_change_password=true;
create user t8
password='YOUR_PASSWORD'
LOGIN_NAME='t8'
default_role=public
must_change_password=true;
create user t9
password='YOUR_PASSWORD'
LOGIN_NAME='t9'
default_role=public
must_change_password=true;
create user t10
password='YOUR_PASSWORD'
LOGIN_NAME='t10'
default_role=public
must_change_password=true;
create user m1
password='YOUR_PASSWORD'
LOGIN_NAME='m1'
default_role=public
must_change_password=true;
create user m2
password='YOUR_PASSWORD'
LOGIN_NAME='m2'
default_role=public
must_change_password=true;
create user m3
password='YOUR_PASSWORD'
LOGIN_NAME='m3'
default_role=public
must_change_password=true;
create user m4
password='YOUR_PASSWORD'
LOGIN_NAME='m4'
default_role=public
must_change_password=true;
create user m5
password='YOUR_PASSWORD'
LOGIN_NAME='m5'
default_role=public
must_change_password=true;
create database s1;
create schema s1.sriii;
create table employe12 (empid int,
empname varchar,
empsal number(10,2));
insert into employe12 values(1,'a',1),
(2,'b',2),(3,'c',3),(4,'d',4);
create role developer_role;
create role  tester_role;
create role manager_role;
grant usage on database s1 to role developer_role;
grant usage on schema s1.sriii to role developer_role;
grant usage on database s1 to role tester_role;
grant usage on schema s1.sriii to role tester_role;
grant usage on database s1 to role manager_role;
grant usage on schema s1.sriii to role manager_role;
grant select,insert,update on s1.sriii.employe12 to role developer_role;
grant select on s1.sriii.employe12 to role tester_role;
grant select,insert,update,delete on s1.sriii.employe12 to role manager_role;
grant role developer_role to user d1;
grant role developer_role to user d2;
grant role developer_role to user d3;
grant role developer_role to user d4;
grant role developer_role to user d5;
grant role developer_role to user d6;
grant role developer_role to user d7;
grant role developer_role to user d8;
grant role developer_role to user d9;
grant role developer_role to user d10;
grant role developer_role to user d11;
grant role developer_role to user d12;
grant role developer_role to user d13;
grant role developer_role to user d14;
grant role developer_role to user d15;
grant role developer_role to user d16;
grant role developer_role to user d17;
grant role developer_role to user d18;
grant role developer_role to user d19;
grant role developer_role to user d20;
grant role tester_role to user t1;
grant role tester_role to user t2;
grant role tester_role to user t3;
grant role tester_role to user t4;
grant role tester_role to user t5;
grant role tester_role to user t6;
grant role tester_role to user t7;
grant role tester_role to user t8;
grant role tester_role to user t9;
grant role tester_role to user t10;
grant role manager_role to user m1;
grant role manager_role to user m2;
grant role manager_role to user m3;
grant role manager_role to user m4;
grant role manager_role to user m5;





select * from employe12;
