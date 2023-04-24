USE lab1;

INSERT INTO Customers (ID, Name, Phone, Email, Address, City, State, Country, Postal)
VALUES ('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

INSERT INTO Customers (ID, Name, Phone, Email, Address, City, State, Country, Postal)
VALUES ('20001', 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Vienna', 'Vienna', 'Austria', '1150');

INSERT INTO Customers (ID, Name, Phone, Email, Address, City, State, Country, Postal)
VALUES ('30001', 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '2054');

INSERT INTO Salespersons (ID, Name, Store)
VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
( '00003', 'Paul Molive', 'Berlin'),
( '00004', 'Gail Forcewind', 'Paris'),
( '00005', 'Paige Turner', 'Miami'),
( '00006', 'Bob Frapples', 'Mexico City'),
( '00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

INSERT INTO Invoices (Invoice_Number, Date, Car, Customer, Sales_Person) 
VALUES 
(852399038, '2018-08-22', 0, 1, 3),
(731166526, '2018-12-31', 3, 0, 5),
(271135104, '2019-01-22', 2, 2, 7);


INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) 
VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');