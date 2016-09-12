drop database thelaptopstore;

create database thelaptopstore;

use thelaptopstore;

drop table shippingAddress;

create table shippingAddress
(
firstname varchar(20),
lastname varchar(20),
line1 varchar(255),
line2 varchar(255),
city char(15),
state char(15),
pincode int,
country char(15),
mobileNo char(10)
);

insert into shippingAddress(firstname, lastname, line1, line2, city, state, pincode, country, mobileNo)
values('Akash', 'Ramesh', '224D Ashford Green', 'Barton Creek Dr', 'Charlotte', 'NC', '28262', 'USA', '9805855955');


drop table billingAddress;

create table billingAddress
(
firstname varchar(20),
lastname varchar(20),
line1 varchar(255),
line2 varchar(255),
city char(15),
state char(15),
pincode int,
country char(15),
mobileNo char(10)
);

insert into billingAddress(firstname, lastname, line1, line2, city, state, pincode, country, mobileNo)
values('Rashmi', 'Gupta', '224D Ashford Green', 'Barton Creek Dr', 'Charlotte', 'NC', '28262', 'USA', '9805855955');

