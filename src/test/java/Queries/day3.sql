-- create table
create table laptop (
    id integer primary key ,
    brand varchar(15),
    color varchar(25),
    price integer
);

select * from laptop;

-- insert data
insert into laptop values (1,'hp','black',800);
insert into laptop values (2,'dell','white',900);
insert into laptop values (3,'msi','gray',950);
insert into laptop values (4,'apple','white',1000);
insert into laptop values (5,'toshiba','red',1100);


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
alter table laptop rename column price to priceDollar;

alter table laptop rename to laptop123;
select * from laptop123;

-- createing another table
create table phone(
                       id_number integer primary key ,
                       brand varchar(25),
                       color varchar(25),
                       price integer
);

insert into phone values (1, 'samsung', 'black', 700);
insert into phone values (2, 'dell', 'grey', 1000);
insert into phone values (3, 'msi', 'black', 800);
insert into phone values (4, 'iphone', 'white', 1100);


select * from phone;

-- set operators
-- union
select brand from LAPTOP
    union
select brand from phone;

