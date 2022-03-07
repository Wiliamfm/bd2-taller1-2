insert into city
values (1, 'cali');

insert into city
values (2, 'medellin');

insert into city
values (3, 'bogota');

insert into user_type
values (1, 'admin');

insert into user_type
values (2, 'user');

insert into user_type
values (3, 'vendor');

insert into document_type
values (1, 'cc');

insert into document_type
values (2, 'ce');

insert into document_type
values (3, 'nit');

insert into brand
values (1, 'adidas');

insert into brand
values (2, 'nike');

insert into brand
values (3, 'rebook');

insert into category
values (1, 'clothes');

insert into category
values (2, 'tecnology');

insert into category
values (3, 'vehicules');

insert into cart_condition
values (1, 'abandoned');

insert into cart_condition
values (2, 'sold');

insert into shipping_type
values(1, 'standar');

insert into shipping_type
values(2, 'express');

insert into pay_method
values (1, 'credit card');

insert into pay_method
values (2, 'bank transfer');

insert into pay_method
values (3, 'upon delivery');

insert into bill_state
values (1, 'delivered');

insert into bill_state
values (2, 'preparation');

insert into bill_state
values (3, 'sent');

insert into bill_state
values (4, 'canceled');

insert into app_user
values (0123456789, 'Pepito Perez', 'asdf@asdf.asdf', '1234', 'calle 185 a # 11 b - 07', 1, 1, 3);

insert into app_user
values (1234567890, 'Sara Perez', 'asdf2@asdf.asdf', '1234', 'calle 185 a # 11 b - 07', 2, 1, 3);

insert into app_user
values (2345678901, 'Camila Perez', 'asdf3@asdf.asdf', '1234', 'calle 185 a # 11 b - 07', 3, 1, 3);

select * from app_user;

insert into phone
values (1, '1234567890', 0123456789);

insert into phone
values (2, '4567891230', 0123456789);

insert into phone
values (3, '9876543210', 2345678901);

insert into auditory.event_type
values (1, 'insert');

insert into auditory.event_type
values (2, 'update');

insert into auditory.event_type
values (3, 'delete');

insert into product
values (1, 'example', null, 1, 1, 2345678901);

select * from product;

select * from auditory.product_audit;

insert into variant
values (1, 100000, 1, 'variant example', 1);

insert into variant
values (2, 125000, 2, 'variant example 2', 1);

insert into variant
values (3, 99.900, 5, 'variant example 3', 1);

insert into variant
values (4, 99.900, 2, 'variant example 4', 1);

insert into variant
values (5, 99.900, 2, 'variant example 5', 1);

select * from auditory.variant_audit;

insert into shopping_cart
values (1, 2, 1, 2345678901);

insert into shopping_cart
values (2, 2, 1, 2345678901);

insert into shopping_cart
values (3, 2, 1, 2345678901);

select * from shopping_cart;

insert into bill
values (1, now(), 1, 1, 1, 1, 10);

insert into bill
values (2, now(), 2, 1, 1, 1, 10);

insert into bill
values (3, now(), 3, 1, 1, 1, 10);

select * from bill;

insert into shopping_product
values (1, 1, 1);

insert into shopping_product
values (2, 2, 1);

insert into shopping_product
values (3, 3, 1);

select * from shopping_product;

insert into product_calification
values (1, 5, 1, 1);

insert into product_calification
values (2, 7, 1, 2);

insert into product_calification
values (3, 1, 1, 3);

select * from product_calification;