CREATE TABLESPACE MyDataBase LOGGING DATAFILE 'D:\Oracle\database\MyDataBase.dbf' SIZE 100M AUTOEXTEND ON NEXT 32M MAXSIZE 500M EXTENT MANAGEMENT LOCAL;
create user stu identified by stu default tablespace MyDataBase;
grant dba to stu;
1、学生表
create table t_stu(  
  id      number(10)   primary key,  
  name    varchar2(20) not null, 
  age     number(10),
  sex     varchar2(2)  default '男' check(stusex in('男','女'))
);  
   
 2、创建考试科目表
create table subject(  
  id     number(10)   primary key,  
  subject   varchar2(20) not null,  
  teacher   varchar2(4),
  description varchar2(40)
);  

3、成绩表
create table t_stu(  
  id      number(10)   primary key,  
  student_id    number(10) not null,  
  subject_id    number(10)  not null,
  score    number(10)
);  
  
