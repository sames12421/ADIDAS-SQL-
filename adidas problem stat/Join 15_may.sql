use 15_may;

-- Customer --> customer_id , customer_name,screen_id
-- Movie ---> Movie_id, Movie_name , Screen_id .

create table customer_details(c_id INT , C_name varchar(50), screen_id INT);

select * from customer_details;

insert into customer_details values (101,'Alex',3),(102,'James',1),(103,'Jimmy',3),(104,'Merlin',5);
insert into customer_details values (105,'Henry',null);
-- Movie details .

create table movie_details(m_id INT, M_name varchar(100),s_id INT primary key);

insert into movie_details values (145,'Dark knights',1),(321,'Interstellar',2),(543,'Mahavatar Narsimha',3),(213,'Memento',4),(876,'saiyaara',5),(765,'Stree',6);

select * from movie_details ;

-- Task : Extrcat the customers booked movies .

-- c_name , m_name , screen_id .
-- c--> customer, m--> movies .
select c.c_name,m.M_name,c.screen_id from customer_details c INNER JOIN movie_details m
ON c.screen_id = m.s_id;

-- Task 2 : All customer details and movie booked by them .
select c.c_name,m.M_name,c.screen_id from customer_details c LEFT JOIN movie_details m
ON c.screen_id = m.s_id;

-- Task 3 : Get all movies listed and customers watching it . 
select c.c_name,m.M_name,c.screen_id from customer_details c RIGHT JOIN movie_details m
ON c.screen_id = m.s_id;

-- Cross Join : map every record form one table to every record on other table .
select c.c_name,m.M_name from customer_details c Cross Join Movie_details m;

USE CASE_STUDY;

SELECT * from employees;
select * from departments;

-- department with no employee .

select departments.dep_name from employees RIGHT JOIN departments 
on employees.department = departments.id where employees.id is null order by departments.id;