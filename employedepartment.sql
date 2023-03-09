create database customerdept;
use customerdept;

CREATE TABLE Employee ( 
    employee_id INT NOT NULL AUTO_INCREMENT, 
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    email VARCHAR(100) UNIQUE NOT NULL, 
    phone VARCHAR(20), 
    hire_date DATE NOT NULL, 
    job_title VARCHAR(50) NOT NULL, 
    department_id INT NOT NULL, 
    salary DECIMAL(10,2) NOT NULL, 
    PRIMARY KEY (employee_id), 
    FOREIGN KEY (department_id) REFERENCES Department(department_id) 

); 

CREATE TABLE Department ( 
    department_id INT NOT NULL AUTO_INCREMENT, 
    department_name VARCHAR(50) NOT NULL, 
    manager_id INT, 
    location VARCHAR(100), 
    PRIMARY KEY (department_id) 
); 

INSERT INTO DEPARTMENT(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION)VALUES(1,"HR",245048,"TRIVANDRUM"),
(2,"DEVELOPER",245045,"BANGALORE"),
(3,"QUALITY ANALYST",245052,"KOCHI"),
(4,"BUSINESS ANALYST",245099,"HYDERABADH");


INSERT INTO EMPLOYEE(EMPLOYEE_ID,first_name, last_name,email ,phone, hire_date, job_title,department_id ,salary)
 VALUES (1,"AYSHA","FATHIMA","AYSHA@UST.COM",7895123456,"2022-12-22","DEVELOPER 1","2",23650.50),
 (2,"finla","andrew","finlaandrew@ust.com","7895647689","2022-12-23","DEVELOPER 1",2,25550.50),
(3,"fana","fitoor","fanafitoor@ust.com","7895647669","2022-12-25","DEVELOPER 1",3,45550.50),
 (4,"anuja","ajay","anujaajay@ust.com","1234567089","2022-12-20","DEVELOPER 1",4,55550.50);
INSERT INTO EMPLOYEE(EMPLOYEE_ID,first_name, last_name,email ,phone, hire_date, job_title,department_id ,salary)
 VALUES (5,"Sagar","s","sagar@UST.COM",7895129856,"2022-12-13","DEVELOPER 1","2",55550.50);

select upper(first_name) as emp_Name from  Employee;

SELECT (count) FROM EMPLOYEE WHERE job_title="HR";
 
SELECT current_date(); 

Select substring(first_name,1,4)from employee; 

select substring_index(location,'(',1)from department; 

create table newtable like employee; 
insert into newtable select*from employee; 
select * from employee; 

select * from employee where salary>='50000'and salary<='100000';

select * from employee where first_name like's%'; 

select concat(first_name,'',last_name)as FullName from employee; 

select * from employee limit n;