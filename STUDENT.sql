create database student;
use student;
CREATE TABLE STUDENT (  
ID INT(10),  
NAME VARCHAR (20),  
AGE INT(20),  
ADDRESS CHAR (25) 
);  
select * from student;
insert into student (ID,NAME,AGE,ADDRESS) values(121,"Aysha",23,"thoppil house"),
(123,"anuja",24,"Aryanivas"),(124,"finla",24,"aryabhavan"),(125,"zelen",24,"Aryahouse"),(126,"zira",23,"krishnavilas");
select * from student;
ALTER TABLE student ADD department varchar(255);
select * from student;

insert into student (ID,NAME,AGE,ADDRESS,department) values(121,"Aysha",23,"thoppil house","cse"),
(123,"anuja",24,"Aryanivas","it"),(124,"finla",24,"aryabhavan","cse"),(125,"zelen",24,"Aryahouse","cse"),(126,"zira",23,"krishnavilas","it");
select * from student;

SELECT * FROM student ORDER BY ADDRESS;
