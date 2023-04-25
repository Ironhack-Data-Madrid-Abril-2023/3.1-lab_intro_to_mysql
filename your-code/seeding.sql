INSERT INTO CARS (idCARS, VIN, Manufacturer, Model, Year, Color)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');

INSERT INTO CARS (idCARS, VIN, Manufacturer, Model, Year, Color)
VALUES (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

INSERT INTO CARS (idCARS, VIN, Manufacturer, Model, Year, Color)
VALUES (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');

INSERT INTO CARS (idCARS, VIN, Manufacturer, Model, Year, Color)
VALUES (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');

INSERT INTO CARS (idCARS, VIN, Manufacturer, Model, Year, Color)
VALUES (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO CARS (idCARS, VIN, Manufacturer, Model, Year, Color)
VALUES (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');



INSERT INTO CUSTOMERS (idCUSTOMERS, ID, name, `phone number`, email, adress, city, `state/province`, country, `zip/postal code`) 
VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);

INSERT INTO CUSTOMERS (idCUSTOMERS, ID, name, `phone number`, email, adress, city, `state/province`, country, `zip/postal code`) 
VALUES (1, 20001, 'Hedy Lamarr', '+43 1 514442250', NULL, 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', 1150);

INSERT INTO CUSTOMERS (idCUSTOMERS, ID, name, `phone number`, email, adress, city, `state/province`, country, `zip/postal code`) 
VALUES (2, 30001, 'Katherine Johnson', '+1 202 358 0000', NULL, '300 E St SW', 'Washington, DC', 'Washington', 'United States', 20546);



INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (0, 00001, 'Petey Cruiser', 'Madrid');

INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (1, 00002, 'Anna Sthesia', 'Barcelona');

INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (2, 00003, 'Paul Molive', 'Berlin');

INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (3, 00004, 'Gail Forcewind', 'Paris');

INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (4, 00005, 'Paige Turner', 'Mimia');

INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (5, 00006, 'Bob Frapples', 'Mexico City');

INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (6, 00007, 'Walter Melon', 'Amsterdam');

INSERT INTO SALESPERSONS (idSALESPERSONS, ID, name, store) 
VALUES (7, 00008, 'Shonda Leer', 'São Paulo');



INSERT INTO INVOICES (idINVOICES, ID, number, date, CUSTOMERS_idCUSTOMERS, SALESPERSONS_idSALESPERSONS, CARS_idCARS) 
VALUES (0, 0001, 852399038, '2018-08-22', 0, 1, 3);

INSERT INTO INVOICES (idINVOICES, ID, number, date, CUSTOMERS_idCUSTOMERS, SALESPERSONS_idSALESPERSONS, CARS_idCARS) 
VALUES (1, 0002, 731166526, '2018-12-31', 2, 0, 5);

INSERT INTO INVOICES (idINVOICES, ID, number, date, CUSTOMERS_idCUSTOMERS, SALESPERSONS_idSALESPERSONS, CARS_idCARS) 
VALUES (2, 0003, 271135104, '2019-01-22', 2, 2, 7);