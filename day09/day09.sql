select case when 1=2 then 'DATHA' 
            when 1=3 then 'chandra'
            when 1=4 then 'narasimha'
            when 1=5 then 'RAVINDRA' 
            else 'ARAVIND' end "NAME";
select * from emp;
drop table emp;

create or replace table emp(id int,name varchar,sal int,deptno int);
insert into emp values(1,'harika',10000,10),(2,'abhi',2000,20),(3,'datha',100000,30),(4,'mounika',1000,40);
insert into emp values(1,'narendra',null,null);
select * from emp;
select name,case 
                 when sal = 10000 then 'average'
                 when sal < 10000 then 'low sal'
                when sal > 10000 then 'HI sal'
                   
                 end as sal_grade from emp;

update emp set sal=case when sal<10000 then sal+(sal*1)
                        when sal=10000 then sal+(sal*0.1)
                        else sal
                        end;
create table t1 (country_name varchar);

insert into t1 values('PAKISTHAN'),('INDIA'),('SWIS'),('NETHERLANDS'),('AMERICA');
select * from t1 order by case when country_name = 'INDIA' then 0
                                when country_name = 'AMERICA' then 1
                            else 2 end,country_name;


                            create or replace table emp(id int,name varchar,sal int,deptno int);
insert into emp values(1,'harika',10000,10),(2,'abhi',2000,20),(3,'datha',100000,30),(4,'mounika',1000,40);
insert into emp values(1,'narendra',null,null);
select * from emp;
select name,sal,decode(sign(sal - 10000),1,'highsal',0,'mediumsal',-1,'lowsal') as sal_grade from emp;

update emp set sal=decode(sign(sal-10000),1,(sal+(0.1)*sal),0,sal,-1,sal+sal);
select * from emp;
create table t1 (country_name varchar);

insert into t1 values('PAKISTHAN'),('INDIA'),('SWIS'),('NETHERLANDS'),('AMERICA');
select * from t1 order by decode(country_name,'INDIA',0,'AMERICA',1,2);
