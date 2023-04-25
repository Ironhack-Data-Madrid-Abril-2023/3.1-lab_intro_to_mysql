INSERT INTO Cars (idCars, VIN, CarManufacturer, CarModel, CarYear, CarColor) VALUES
(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO Customer (idCustomer, CustomerName, CustomerPhone, CustomerEmail, CustomerAddress, CustomerCity, CustomerState, CustomerCountry, CustomerPostalCode) VALUES
(0, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(1, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Vienna', 'Vienna', 'Austria', '1150'),
(2, 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');

INSERT INTO SalesPerson (idSalesPerson, SalesPersonName, SalesPersonStore) VALUES
(0, 'Peter Parker', 'Madrid'),
(1, 'Mary Jane', 'Barcelona'),
(2, 'Tony Stark', 'Berlin'),
(3, 'Natasha Romanoff', 'Paris'),
(4, 'Steve Rogers', 'Miami'),
(5, 'Bruce Banner', 'Mexico City'),
(6, 'Thor Odinson', 'Amsterdam'),
(7, 'Wanda Maximoff', 'São Paulo');

INSERT INTO Invoices (idInvoices, SalesPerson_idSalesPerson, Customer_idCustomer, Cars_idCars) VALUES
(0, 3, 1, 0),
(1, 5, 0, 3),
(2, 7, 2, 2);



  


