

insert into cars (car_id,manufacturer,model,years,color,VIN)
values (0,'Volkswagen','Tiguan','2019','Blue','3K096I98581DHSNUP');
insert into cars (car_id,manufacturer,model,years,color,VIN)
values (1,'Peugeot','Rifter','2019','Red','ZM8G7BEUQZ97IH46V');
insert into cars (car_id,manufacturer,model,years,color,VIN)
values (2,'Ford','Fusion','2018','White','DAM41UDN3CHU2WVF6');
insert into cars (car_id,manufacturer,model,years,color,VIN)
values (3,'Volvo','V60','2019','Gray','RKXVNNIHLVVZOUB4M');
insert into cars (car_id,manufacturer,model,years,color,VIN)
values (4,'Volvo','V60 Cross Country','2019','Gray','RKXVNNIHLVVZOUB4M');


insert into costumers (costumer_id,name,phone,email,adress,country,postal)
values (0,'Pablo','636 176 382','pabs@gmail.com','Madrid','España','28023');
insert into costumers (costumer_id,name,phone,email,adress,country,postal)
values (1,'Maria','536 176 382','maria@gmail.com','Barcelona','España','34023');
insert into costumers (costumer_id,name,phone,email,adress,country,postal)
values (2,'Lucas','536 546 382','lucas@gmail.com','Valencia','España','46111');

insert into salesperson (idsalesperson, name, store)
values (0, 'Petey Cruiser', 'Madrid');
insert into salesperson (idsalesperson, name, store)
values (1, 'Anna Sthesia', 'Barcelona');
insert into salesperson (idsalesperson, name, store)
values (2, 'Paul Movile', 'Berlin');

insert into invoices (invoices_id,`invoice number`,date,cars_car_id,salesperson_idsalesperson,costumers_costumer_id,salesperson_idsalesperson1)
values (1,'731166526','2018-12-31',0,2,2,0);
insert into invoices (invoices_id,`invoice number`,date,cars_car_id,salesperson_idsalesperson,costumers_costumer_id,salesperson_idsalesperson1)
values (0,'852399038','2018-08-22',1,0,2,1);








