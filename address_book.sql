# UC 1
create database address_book;
show databases;
use address_book;

#UC 2
create table addressBook_table
(
 firstName   	  varchar(150) NOT NULL,
 lastName 	  varchar(150) NOT NULL,
 address 	 varchar(300) NOT NULL,
 city    	 varchar(150) NOT NULL,
 state  	  varchar(150) NOT NULL,
 zip   		 numeric(6)  NOT NULL,
 phoneNum	  numeric(10) NOT NULL,
 email    	varchar(200) NOT NULL,
 PRIMARY KEY	(firstName,lastName)
);
describe addressBook_table;

#UC 3
insert into addressBook_table (firstName, lastName, address, city, state, zip, phoneNum, email) values
('Bill','Games', 'USA', 'SF', 'CA', 100010, 20180103, 'xyz.com'),
('Terise', 'Gomes', 'India', 'MH', 'Mumbai', 400088, 93747495, 'terise.com'),
('Charlie', 'Gate', 'USA', 'LA', 'CA', 200010, 201801903, 'CHARLIE.com');
select * from addressBook_table;

# UC 4
update addressBook_table set phone = 1200021 where firstName = 'Bill' AND lastName = 'Games';
update addressBook_table set email = 'bill@gmail.com' where firstName = 'Bill' AND lastName = 'Games';
update addressBook_table set city = 'Mumbai' where firstName = 'Terise' AND lastName = 'Gomes';
update addressBook_table set state = 'MH' where firstName = 'Terise' AND lastName = 'Gomes';
select * from addressBook_table;

# UC 5
delete from addressBook_table where firstName = 'Charlie' AND lastName = 'Gate';
select * from addressBook_table;

insert into addressBook_table (firstName, lastName, address, city, state, zip, phoneNum, email) values
('Ball','Gammes', 'USA', 'SF', 'CA', 100010, 20180103, 'xyz.com'),
('Terisa', 'Gomezz', 'India', 'Mumbai', 'MH', 400088, 93747495, 'terise.com'),
('Charlie', 'Gate', 'USA', 'LA', 'CA', 200010, 201801903, 'CHARLIE.com');

# UC 6
select * from addressBook_table where city = 'SF';
select * from addressBook_table where state = 'CA';
select * from addressBook_table where city = 'Mumbai';
select * from addressBook_table where state = 'MH';

# UC 7
select city, count(*) from addressBook_table group by city;
select state, count(*) from addressBook_table group by state;