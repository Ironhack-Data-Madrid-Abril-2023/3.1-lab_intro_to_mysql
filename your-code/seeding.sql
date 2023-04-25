INSERT INTO cars (id_car, VIN, manufacturer, model, year, color)
VALUES 
			(1,"3K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue"),
			(2, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red"),
			(3, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
			(4, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
			(5, "DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray"),
			(6, "DAM41UDN3CHU2WVF6", "Volvo", "Cross Country", "2019", "Gray");

ALTER TABLE Customers CHANGE COLUMN `postal-code` postal_code VARCHAR(50);


INSERT INTO customers (id_customer, name, phone_number, email, address, city, state_province, country, postal_code)
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    (20001, 'Hedy Lamarr', '+43 1 514442250', NULL, 'Weiglgasse 10', 'Vienna', 'Vienna', 'Austria', '1150'),
    (30001, 'Katherine Johnson', '+1 202 358 0000 300', NULL, 'E St SW', 'Washington', 'DC', 'United States', '20546');


INSERT INTO salespersons (id_salesperson, name, store_location)
VALUES
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind', 'Paris');
            
INSERT INTO invoices (id_invoice, invoice_number, date, id_car, Salespersons_id_salesperson, Customers_id_customer, Cars_id_car)
VALUES
     (0, '852399038', '2018-08-22', "3K096I98581DHSNUP", '10001', '3', '1'),
     (1, '731166526', '2018-12-31', "ZM8G7BEUQZ97IH46V", '20001', '5', '0'),
     (2, '271135104', '2019-01-22', "RKXVNNIHLVVZOUB4M", '30001', '7', '2');

