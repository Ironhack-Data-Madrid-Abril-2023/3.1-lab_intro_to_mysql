insert into cars (VIN, Manufacture, Model, Year, Color) values 
('3K096I98581DHSNUP', 'Volkswagen',  'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot',  'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford',  'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota',  'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo',  'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo',  'V60 Cross Country', 2019, 'Gray');

insert into customers (CustomersID, Name, Phone, Email, Adress, City, State, Country, CP) values
(10001, 'Pablo Picasso', +34636176382, '-', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Hedy Lamarr', +431514442250, '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', 1150),
(30001, 'Katherine Johnson', +12023580000, '-', '300 E St SW', 'Washington DC', 'Washington', 'United States', 20546);

INSERT INTO salespersons (StaffID, Name, Store, Customers_CustomersID) values
(00001, 'Petey Cruiser', 'Madrid', 10001),
(00002, 'Anna Sthesia', 'Barcelona', 10001),
(00003, 'Paul Molive', 'Berlin', 10001),
(00004, 'Gail Forcewind', 'Paris', 20001),
(00005, 'Paige Turner', 'Mimia', 30001),
(00006, 'Bob Frapples', 'Mexico City', 20001),
(00007, 'Walter Melon', 'Amsterdam', 30001),
(00008, 'Shonda Leer', 'São Paulo', 10001);

INSERT INTO invoices (Invoice_Number, Date, Car, Customer, Salesperson, Cars_VIN, Customers_CustomersID, Salespersons_StaffID, Salespersons_Customers_CustomersID) values
(852399038, '2018-08-22', 0, 1, 3, '3K096I98581DHSNUP', 10001, 00002, 10001),
(731166526, '2018-12-31', 3, 0, 5, 'DAM41UDN3CHU2WVF7', 30001, 00007, 30001),
(271135104, '2019-01-22', 2, 2, 7, 'ZM8G7BEUQZ97IH46V', 30001, 00006, 30001);