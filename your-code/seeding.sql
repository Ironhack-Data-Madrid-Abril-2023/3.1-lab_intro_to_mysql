INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color)
VALUES (0, '3K096I98581DHSNUP',	'Volkswagen', 'Tiguan',	2019, 'Blue'), 
        (1,	'ZM8G7BEUQZ97IH46V', 'Peugeot	Rifter', 2019,	'Red'),
        (2,	'RKXVNNIHLVVZOUB4M', 'Ford Fusion',	2018, 'White'),
        (3,	'HKNDGS7CU31E9Z7JW', 'Toyota	RAV4',	2018,	'Silver'),
        (4,	'DAM41UDN3CHU2WVF6', 'Volvo	V60',	2019,	'Gray'),
        -- da error (5,	'DAM41UDN3CHU2WVF6', 'Volvo	V60 Cross Country',	2019,'Gray')
        ;


INSERT INTO customers (ID,	Customer_ID,	Name,	Phone,	Email,	Address, City, State/Province,	Country,	Postal)
VALUES (0,	10001,	'Pablo Picasso',	'+34 636 17 63 82',	" ", "Paseo de la Chopera, 14",	'Madrid',	'Madrid',	'Spain',	28045),
        (1,	20001,	'Hedy Lamarr',	'+43 1 514442250',	' ',	'Weiglgasse 10',	'Viena',	'Vienna',	'Austria',	1150);


INSERT INTO salespersons (ID,	Staff_ID,	Name,	Store)
VALUES (0,	00001,	'Petey Cruiser',	'Madrid');


INSERT INTO invoices (ID,	Invoice Number,	Date,	Car,	Customer,	Sales Person)
VALUES (0,	852399038,	'22-08-2018',	0,	1,	3);