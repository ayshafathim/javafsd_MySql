use assignment1;

create table owners (owner_id varchar(10),
owner_name varchar(10),
address varchar(20),
phoneno bigint,
email_id varchar(20),
primary key(owner_id)
);

create table customers (customer_id varchar(10) primary key,
customer_name varchar(10),
address varchar(20),
phoneno bigint,
email_id varchar(20)
);

create table cars (car_id varchar(10) primary key,
car_name varchar(20),
car_type varchar(20),
owner_id varchar(10),
FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

create table rentals (rental_id varchar(10) primary key,
customer_id varchar(10),
car_id varchar(10),
pickup_date date,
return_date date,
km_driven int,
fare_amount double(10,2),

FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
FOREIGN KEY (car_id) REFERENCES cars (car_id)
);

insert into owners
values("1","Aysha","Chengannur",7032541845,"aysha@gmail.com"),
("2","Aparna","Kottayam",8765230098,"aysha@gmail.com"),
("3","Malavika","Pathanamthitta",8346281098,"meera@gmail.com"),
("4","Finla","Thrissur",9523451678,"finla@gmail.com"),
("5","Sagar","Ernakulam",8745632711,"sagar@gmail.com"),
("6","Kevin","Paravur",9456123677,"kevin@gmail.com"),
("7","Swetha","Lakoor",6678902466,"swetha@gmail.com"),
("8","Aadil","Idappally",8891254367,"aadil@gmail.com");
delete from owners where owner_id='7';
delete from owners where owner_id='8';


insert into customers values ("C001","lal","qwerty",897654321,"lal@ust,com"),
 ("C002","hila","mangaos",9876543231,"hila@gmail.com"),
 ("C003","biba","kliuy",5678909090,"biba@gmail.com"),
 ("C004","cristta","hetchkiaa",8989898989,"cristta@ust.com"),
 ("C006","kitta","avittathur",7868767896,"kitta@ust.com"),
 ("C007","kevin","kodangur",8987897656,"kevi@ustom");






insert into cars values ("V001","Thar","Hatchback","1");
insert into cars values ("V003","Verna","sedan","2");
insert into cars values ("V004","xuv700","suv","3");
insert into cars values ("V005","benz","offroader","4");
insert into cars values ("V006","creta","Hatchback","5");
insert into cars values ("V007","toyota","suv","6");




insert into rentals values ("R001","C007","V004","2018-03-10","2018-03-10",800,9000);
insert into rentals values ("R002","C001","V007","2018-03-11","2018-03-12",200,3000);
insert into rentals values ("R003","C007","V003","2018-04-15","2018-04-15",100,1500);
insert into rentals values ("R004","C007","V001","2018-05-16","2018-05-18",1000,10000);
insert into rentals values ("R005","C004","V005","2018-05-10","2018-05-12",900,11000);
insert into rentals values ("R006","C004","V006","2018-05-20","2018-05-21",200,2500);


insert into cars values ("V008","creta","Hatchback","5");
insert into cars values ("V009","toyota","suv","6");
select car_id,car_name,car_type from cars where car_id not in (select car_id from rentals) order by car_id;

select car_id,car_name,owner_id from cars where (car_type='Hatchback')or(car_type='suv') ORDER BY car_id;
select car_id,car_name,owner_id from cars where car_type in ("Hatchback","SUV");


alter table cars add (car_regno varchar(10));


insert into cars values ("V0010","maruthi","Sedan","4","345");
select car_id,car_name,car_type from cars where car_name = "maruthi" and car_type = "sedan" order by car_id;

SELECT DISTINCT owners.owner_id, owners.owner_name, owners.address, owners.phoneno FROM owners
INNER JOIN cars  ON owners.owner_id = cars.owner_id
WHERE cars.car_name = 'Maruthi' ORDER BY owners.owner_id;

SELECT rental_id,car_id,customer_id,km_driven from rentals where pickup_date>='2018-03-01' and 
pickup_date<='2018-03-31' order by rental_id;



