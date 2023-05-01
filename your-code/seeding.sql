INSERT INTO cars (ID_cars, VIN, manufacter, model, year, color)
VALUES
(0,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO customer (customer_id, customer_number, name, phone_number, email, address, city, `state/province`, country, `zip/postal code`)
VALUES
(0, '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid','Madrid', 'Spain', 28045),
(1, '20001', 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Viena', 'Austria', '28045'),
(2,'30001', 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');

INSERT INTO salesperson (idstaff, `staff ID`, name, store)
VALUES
(0, '00001', 'Petey Cruiser', 'Madrid'),
(1, '00002', 'Anna Sthesia', 'Barcelona'),
(2, '00003', 'Paul Molive', 'Berlin'),
(3, '00004', 'Gail Forcewind', 'Paris'),
(4, '00005', 'Paige Turner', 'Miami'),
(5, '00006', 'Bob Frapples', 'Mexico City'),
(6, '00007', 'Walter Melon', 'Amsterdam'),
(7, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoice (Invoice_ID, Invoice_number, date, Cars_ID_cars, Customer_customer_id, Salesperson_idstaff)
VALUES
(0, '852399038', 2018-08-22, '0','1', '3'),
(1, '731166526', 2018-12-31, '3','0', '5'),
(2, '271135104', 2019-01-22, '2','2', '7');