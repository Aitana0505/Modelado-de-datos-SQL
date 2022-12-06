--Práctica del modulo SQL de Aitana Alvarez Santana

--First I create the schema
create schema fleetmaster authorization fcvuhkkp;


-- Start with Cars table

create table fleetmaster.model(
	idmodel varchar(40) not null, --PK
	brand varchar(40) not null, 
	company_group varchar(40) not null 
);

alter table fleetmaster.model
add constraint model_PK primary key (idmodel);

create table fleetmaster.colour(
	idcolour varchar(20) not null, --PK 
	name varchar(20) not null
);

alter table fleetmaster.colour
add constraint colour_PK primary key (idcolour);

create table fleetmaster.cars(
	idcar varchar(40) not null, --PK 
	idmodel varchar(40) not null, --FK ->model
	plate varchar(10) not null,
	idcolour varchar(20) not null, --FK -> colour
	num_kms integer not null,
	dt_purchase date not null
);

alter table fleetmaster.cars
add constraint cars_PK primary key (idcar);

alter table fleetmaster.cars
add constraint cars_model_FK foreign key (idmodel)
references fleetmaster.model(idmodel);

alter table fleetmaster.cars
add constraint cars_colour_FK foreign key (idcolour)
references fleetmaster.colour(idcolour);

-- upload the data 

insert into fleetmaster.model
(idmodel, brand, company_group)
values('x5', 'BMW', 'BMW group');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('x3', 'BMW', 'BMW group');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('auris', 'Toyota', 'Toyota Motor Corporation');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('focus', 'ford', 'Ford');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('yaris', 'Toyota', 'Toyota Motor Corporation');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('ibiza', 'Seat', 'Grupo Volkswagen');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('fiesta', 'ford', 'Ford');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('Q3', 'Audi', 'Grupo Volkswagen');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('Q7', 'Audi', 'Grupo Volkswagen');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('x6', 'BMW', 'BMW group');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('tucson', 'Hyundai', 'Hyundai Motor Company');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('i30', 'Hyundai', 'Hyundai Motor Company');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('sportage', 'kia', 'Hyundai Motor Company');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('ceed', 'kia', 'Hyundai Motor Company');

insert into fleetmaster.model
(idmodel, brand, company_group)
values('rio', 'kia', 'Hyundai Motor Company');


insert into fleetmaster.colour
(idcolour, name)
values('NEG', 'negro');

insert into fleetmaster.colour
(idcolour, name)
values('ROJ', 'rojo');

insert into fleetmaster.colour
(idcolour, name)
values('BLA', 'blanco');

insert into fleetmaster.colour
(idcolour, name)
values('AZU', 'azul');

insert into fleetmaster.colour
(idcolour, name)
values('VER', 'verde');

insert into fleetmaster.colour
(idcolour, name)
values('NAR', 'naranja');

insert into fleetmaster.colour
(idcolour, name)
values('AMA', 'amarilo');

insert into fleetmaster.colour
(idcolour, name)
values('MOR', 'morado');

insert into fleetmaster.colour
(idcolour, name)
values('GRI', 'gris');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('1', 'x5', '0070GNL', 'NEG', 100400, '2008-06-23');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('2', 'x3', '0080GAL', 'AZU', 103400, '2009-02-21');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('3', 'auris', '0280GBL', 'ROJ', 60400, '2019-04-15');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('4', 'focus', '0080GCL', 'AZU', 103400, '2009-02-21');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('5', 'yaris', '1380GQL', 'BLA', 132400, '2018-02-21');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('6', 'ibiza', '5680GWL', 'MOR', 98430, '2010-09-21');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('7', 'fiesta', '9080GEL', 'BLA', 99400, '2009-10-21');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('8', 'Q7', '0340GFL', 'NEG', 120000, '2007-02-17');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('9', 'Q7', '0015GRL', 'AZU', 20400, '2017-02-21');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('10', 'x6', '0240GTL', 'NAR', 80400, '2018-02-03');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('11', 'tucson', '1230GYL', 'AMA', 76400, '2017-02-21');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('12', 'i30', '0837GUL', 'AZU', 120400, '20010-10-01');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('13', 'sportage', '2864GIL', 'NEG', 200400, '2020-02-15');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('14', 'ceed', '7736GSL', 'BLA', 59400, '2020-02-03');

insert into fleetmaster.cars
(idcar, idmodel, plate, idcolour, num_kms, dt_purchase)
values('15', 'rio', '8374GFL', 'AMA', 88400, '2019-02-13');





-- Start with the Insurance_policy

create table fleetmaster.company(
	idcompany varchar(40) not null, -- PK
	name varchar(40) not null
);

alter table fleetmaster.company
add constraint company_PK primary key (idcompany);

create table fleetmaster.insurance_policy(
	idcar varchar(40) not null, --PK, FK 
	idinsurance varchar(40) not null, --PK  
	num_policy integer not null, 
	idcompany varchar(40) not null
);

alter table fleetmaster.insurance_policy
add constraint insurance_policy_PK primary key (idcar, idinsurance);

alter table fleetmaster.insurance_policy
add constraint insurance_policy_cars_FK foreign key (idcar)
references fleetmaster.cars(idcar);

alter table fleetmaster.insurance_policy
add constraint insurance_policy_company_FK foreign key (idcompany)
references fleetmaster.company(idcompany); 


---update data 



insert into fleetmaster.company
(idcompany, name)
values('01', 'Mapfre');

insert into fleetmaster.company
(idcompany, name)
values('02', 'Pelayo');

insert into fleetmaster.company
(idcompany, name)
values('03', 'Mutua Madrileña');

insert into fleetmaster.company
(idcompany, name)
values('04', 'Allianz');

insert into fleetmaster.company
(idcompany, name)
values('05', 'Linea directa');

insert into fleetmaster.company
(idcompany, name)
values('06', 'AXA');


insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('1', '1', 1001, '06');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('2', '2', 1002, '02');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('3', '3', 1003, '01');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('4', '4', 1004, '03');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('5', '5', 1005, '04');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('6', '6', 1006, '03');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('7', '7', 1007, '05');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('8', '8', 1008, '02');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('9', '9', 1009, '01');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('10', '10', 1010, '02');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('11', '11', 1011, '03');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('12', '12', 1012, '04');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('13', '13', 1013, '05');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('14', '14', 1014, '06');

insert into fleetmaster.insurance_policy
(idcar, idinsurance, num_policy, idcompany)
values('15', '15', 1015, '02');

-- Start with inspection table

create table fleetmaster.currency(
	idcurrency varchar(20) not null, -- PK
	name varchar(20) not null
);

alter table fleetmaster.currency
add constraint currency_PK primary key (idcurrency); 

create table fleetmaster.inspection(
	idcar varchar(40) not null, -- PK, FK-> cars
	dt_inspection date not null, --PK 
	kms_inspection integer not null, 
	price integer not null, 
	idcurrency varchar(20), --FK -> currency
	description varchar(200) null
);

alter table fleetmaster.inspection
add constraint inspection_PK primary key (idcar, dt_inspection); 

alter table fleetmaster.inspection
add constraint inspection_cars_FK foreign key (idcar)
references fleetmaster.cars(idcar);

alter table fleetmaster.inspection
add constraint inspection_currency_FK foreign key (idcurrency)
references fleetmaster.currency(idcurrency);

-- update data  

insert into fleetmaster.currency
(idcurrency, name)
values('EUR', 'euro');

insert into fleetmaster.currency
(idcurrency, name)
values('DOL', 'dollar');

insert into fleetmaster.currency
(idcurrency, name)
values('BOB', 'Boliviano');

insert into fleetmaster.currency
(idcurrency, name)
values('CAD', 'dollar canadiense');

insert into fleetmaster.currency
(idcurrency, name)
values('DOP', 'peso dominicano');


insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('1', '2022-01-01', 100400, 56, 'EUR', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('1', '2017-01-01', 20400, 49, 'EUR', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('2', '2022-01-01', 103400, 56, 'DOL', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('2', '2017-01-01', 30400, 50, 'DOL', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('3', '2022-01-01', 60400, 56, 'EUR', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('4', '2022-01-01', 103400, 56, 'DOP', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('5', '2022-01-01', 100400, 56, 'DOL', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('6', '2022-01-01', 90400, 56, 'BOB', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('7', '2022-01-01', 80400, 56, 'DOL', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('8', '2022-01-01', 100400, 56, 'DOP', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('8', '2017-01-01', 80400, 49, 'DOP', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('9', '2022-01-01', 19400, 56, 'EUR', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('10', '2022-01-01', 78400, 56, 'CAD', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('11', '2022-01-01', 70400, 56, 'DOP', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('11', '2020-01-01', 30400, 50, 'DOP', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('11', '2021-01-01', 50400, 48, 'DOP', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('12', '2022-01-01', 100400, 56, 'DOL', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('13', '2022-01-01', 103400, 56, 'CAD', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('14', '2022-01-01', 50400, 56, 'DOL', '');

insert into fleetmaster.inspection
(idcar, dt_inspection, kms_inspection, price, idcurrency, description)
values('15', '2022-01-01', 90400, 56, 'EUR', '');

