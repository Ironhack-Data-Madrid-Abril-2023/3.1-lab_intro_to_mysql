INSERT INTO Cars (ID, VIN, Manufacturer, Model, Year, Color)
VALUES
(0,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO Cutomers (ID, CustomerID, Name, Phone, Email, Address, City, Province, Country, Postal)
VALUES
(0, '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid','Madrid', 'Spain', 28045),
(1, '20001', 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Viena', 'Austria', '28045'),
(2,'30001', 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');

INSERT INTO Salesperson (ID, staffID, Name, Store)
VALUES
(0, '00001', 'Petey Cruiser', 'Madrid'),
(1, '00002', 'Anna Sthesia', 'Barcelona'),
(2, '00003', 'Paul Molive', 'Berlin'),
(3, '00004', 'Gail Forcewind', 'Paris'),
(4, '00005', 'Paige Turner', 'Miami'),
(5, '00006', 'Bob Frapples', 'Mexico City'),
(6, '00007', 'Walter Melon', 'Amsterdam'),
(7, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO Invoice (ID, Invoice_Number, Date, Car_ID, Customer_ID, Salesperson_ID)
VALUES
(0, '852399038', 22-08-2018,  '3','0','1'),
(1, '731166526', 31-12-2018, '5', '3','0'),
(2, '271135104', 22-01-2019, '7', '2','2');