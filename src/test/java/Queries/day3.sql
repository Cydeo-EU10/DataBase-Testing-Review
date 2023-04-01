-- create table
create table laptopNew (
    id integer primary key ,
    brand varchar(15),
    color varchar(25),
    price integer
);

select * from laptopNew;

-- insert data
insert into laptopNew values (1,'hp','black',800);
insert into laptopNew values (2,'dell','white',900);
insert into laptopNew values (3,'msi','gray',950);
insert into laptopNew values (4,'apple','white',1000);
insert into laptopNew values (5,'toshiba','red',1100);


-- update data
update laptop
set price = 1050
where id=5;

update laptop
set color=''
where id=3;

update laptop
set color = 'yellow'
where color='white';

-- delete data
delete laptop
where id=5;

--alter and alter actions
alter table laptopNew rename column price  to priceDollar ;

alter table laptop rename to laptop123;
select * from laptop123;

-- createing another table
create table phoneNew(
                       id_number integer primary key ,
                       brand varchar(25),
                       color varchar(25),
                       price integer
);

insert into phoneNew values (1, 'samsung', 'black', 700);
insert into phoneNew values (2, 'dell', 'grey', 1000);
insert into phoneNew values (3, 'msi', 'black', 800);
insert into phoneNew values (4, 'iphone', 'white', 1100);


select * from phoneNew;

-- set operators
-- union
select brand from laptopNew
    union
select brand from phoneNew;

-- union all
select brand from laptopNew
union all
select brand from phoneNew;


-- minus
select brand from laptopNew
minus
select brand from phoneNew;

select brand,color from laptopNew
minus
select brand, color from phoneNew;

select brand from  laptopNew;
select brand from  phoneNew;

-- intersect
select brand from laptopNew
intersect
select brand from phoneNew;