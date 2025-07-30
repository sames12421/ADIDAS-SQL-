create table emp (id int primary key ,f_name varchar(50), dep varchar(50));
INSERT INTO emp VALUES (101, 'Ritu', 'CSE');
INSERT INTO emp VALUES (102, 'Anu', 'ECE');
INSERT INTO emp VALUES (103, 'Ravi', 'IT');
INSERT INTO emp VALUES (104, 'Neha', 'CIVIL');
INSERT INTO emp VALUES (105, 'Karan', 'MECH');
select * from emp;

create table  dep (d_id int primary key , dep_name varchar(50)); 
INSERT INTO dep VALUES (1, 'CSE');
INSERT INTO dep VALUES (2, 'ECE');
INSERT INTO dep VALUES (3, 'IT');
INSERT INTO dep VALUES (4, 'CIVIL');
INSERT INTO dep VALUES (5, 'MECH');
INSERT INTO dep VALUES (6, 'AIML');

select * from dep;

select d.dep_name from dep d
left join emp e ON d.d_id = e.id
where e.id is null
order by d.d_id;