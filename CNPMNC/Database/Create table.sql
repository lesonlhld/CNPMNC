drop database if exists SAP;
create database SAP;
use SAP;
create table accommodation(
	id int not null auto_increment,
    address varchar(255) not null,
    type_acc varchar(45) not null,
    cost int not null,
    description_acc varchar(200),
    contact varchar(45) not null,
    status_acc varchar(10) not null,
    image text null,
    primary key(id)
);

insert into accommodation (id, address, type_acc, cost, description_acc, contact, status_acc)
values (1, 'linh trung, thu duc', 'Chung cư', '2000000', 'chung cu cao cap', '0987654321', 'empty'),
(2, 'linh trung, thu duc', 'Nhà trọ', 1000000, 'nha tro gia re', '093454321', 'empty'),
(3, 'ly thuong kiet, quan 10', 'Chung cư', 5000000, 'chung cu trung binh', '0237654321', 'full'),
(4, 'ly thuong kiet, quan 10', 'Villa', 10000000, 'villa', 'villa@gmail.com', 'full'),
(5,	'Quận 1, Hồ Chí Minh',	'Nhà trọ', 3000000,	'Nhà trọ',	'0925919727', 'empty'),
(6,	'Quận 3', 'Nhà trọ', 1500000, 'Nhà trọ', 'contact@gmail.com', 'full');

select id, type_acc, address, cost, description_acc, contact, status_acc, image from accommodation where address like "%%" and cost >= "0" and status_acc like "%%";
commit