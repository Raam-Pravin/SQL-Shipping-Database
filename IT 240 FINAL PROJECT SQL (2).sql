/*
	Place DROP comamnds after this comment
	e.g. DROP TABLE
*/
	DROP 	TABLE IF EXISTS FP.RPOrderDetails;
	DROP 	TABLE IF EXISTS FP.RPProductInfo;
	DROP 	TABLE IF EXISTS FP.RPSupplierInfo;
	DROP 	TABLE IF EXISTS FP.RPOrders;
	DROP 	TABLE IF EXISTS FP.RPCustomers;

/*
	Place CREATE comamnds after this comment
	e.g. CREATE TABLE
*/


--CREATE SCHEMA FP ;
CREATE 	TABLE FP.RPCustomers (
	CustomerID 		CHAR(3) 		NOT NULL,
	FirstName 		VARCHAR(25) 		NOT NULL,
	LastName 		VARCHAR(25) 		NOT NULL,
	City			VARCHAR(25) 		NOT NULL,
	Country			VARCHAR(25) 		NOT NULL,
	PhoneNumber		VARCHAR(25) 	NOT NULL ) ;
GO
/*
	Place CREATE comamnds after this comment
	e.g. CREATE TABLE
*/
CREATE 	TABLE FP.RPSupplierInfo (
	SupplierID 			CHAR(6) 			NOT NULL,
	CompanyName 		VARCHAR(60) 		NOT NULL,
	ContactName 		VARCHAR(50) 		NOT NULL,
	Title 				VARCHAR(8) 			NULL,
	City		 		VARCHAR(25) 		NOT NULL,
	Country 			VARCHAR(25) 		NOT NULL,
	PhoneNumber 		VARCHAR(25) 		NOT NULL,
	FaxNumber		 	VARCHAR(25) 		 NULL) ;
GO
CREATE 	TABLE FP.RPProductInfo (
	ProductID	 		CHAR(4) 		 NOT NULL,
	ItemSoldName 		VARCHAR(40) 	NOT NULL,
	RetailPrice 		DECIMAL(6,2) 	NOT NULL,
	Packaging		 	VARCHAR(20) 	NOT NULL,
	IsDiscontinued	 	CHAR(1) 		NOT NULL,
	SupplierID		 	CHAR(6) 		NOT NULL) ;
GO
CREATE 	TABLE FP.RPOrders (
	OrderNumber 		CHAR(6) 		NOT NULL,
	OrderDate 			DATE 		NOT NULL,
	TotalAmount 		DECIMAL(8,2) 		NOT NULL,
	CustomerID 			CHAR(3) 		NOT NULL) ;
GO	
CREATE 	TABLE FP.RPOrderDetails (
	OrderNumber 		CHAR(6) 		NOT NULL,
	ProductID 			CHAR(4) 		  NULL,
	SalesPrice 			DECIMAL(6,2) 	NOT NULL,
	Quanity 			INT 			NOT NULL, 
	ItemSoldName		VARCHAR(40)     Not NULL) ;

GO	
/*
	Place INSERT comamnds after this comment
	e.g. INSERT INTO
*/	
INSERT INTO FP.RPCustomers (CustomerID,	FirstName,	LastName,	City,	Country,	PhoneNumber) VALUES
('300',	'Paul',	'Henriot',	'Reims',	'France',	'26.47.15.10'),
('301',	'Karin',	'Josephs',	'Münster',	'Germany',	'0251-031259'),
('302',	'Mario',	'Pontes',	'Rio de Janeiro',	'Brazil',	'(21) 555-0091'),
('303',	'Mary',	'Saveley',	'Lyon',	'France',	'78.32.54.86'),
('304',	'Pascale',	'Cartrain',	'Charleroi',	'Belgium',	'(071) 23 67 22 20'),
('305',	'Yang',	'Wang',	'Bern',	'Switzerland',	'0452-076545'),
('306',	'Michael',	'Holz',	'Genève',	'Switzerland',	'0897-034214'),
('307',	'Paula',	'Parente',	'Resende',	'Brazil',	'(14) 555-8122'),
('308',	'Carlos',	'Hernández',	'San Cristóbal',	'Venezuela',	'(5) 555-1340'),
('309',	'Roland',	'Mendel',	'Graz',	'Austria',	'7675-3425'),
('310',	'Francisco',	'Chang',	'México D.F.',	'Mexico',	'(5) 555-3392'),
('311',	'Henriette',	'Pfalzheim',	'Köln',	'Germany',	'0221-0644327'),
('312',	'Bernardo',	'Batista',	'Rio de Janeiro',	'Brazil',	'(21) 555-4252'),
('313',	'Paula',	'Wilson',	'Albuquerque',	'USA',	'(505) 555-5939'),
('314',	'Maria',	'Larsson',	'Bräcke',	'Sweden',	'0695-34 67 21'),
('315',	'Frédérique',	'Citeaux',	'Strasbourg',	'France',	'88.60.15.31'),
('316',	'Pirkko',	'Koskitalo',	'Oulu',	'Finland',	'981-443655'),
('317',	'Peter',	'Franken',	'München',	'Germany',	'089-0877310'),
('318',	'Manuel',	'Pereira',	'Caracas',	'Venezuela',	'(2) 283-2951'),
('319',	'Karl',	'Jablonski',	'Seattle',	'USA',	'(206) 555-4112'),
('320',	'Art',	'Braunschweiger',	'Lander',	'USA',	'(307) 555-4680'),
('321',	'Horst',	'Kloss',	'Cunewalde',	'Germany',	'0372-035188'),
('322',	'Giovanni',	'Rovelli',	'Bergamo',	'Italy',	'035-640230'),
('323',	'Miguel',	'Angel Paolino',	'México D.F.',	'Mexico',	'(5) 555-2933'),
('324',	'Alexander',	'Feuer',	'Leipzig',	'Germany',	'0342-023176'),
('325',	'Christina',	'Berglund',	'Luleå',	'Sweden',	'0921-12 34 65'),
('326',	'Renate',	'Messner',	'Frankfurt a.M.',	'Germany',	'069-0245984'),
('327',	'Alejandra',	'Camino',	'Madrid',	'Spain',	'(91) 745 6200'),
('328',	'Carlos',	'González',	'Barquisimeto',	'Venezuela',	'(9) 331-6954'),
('329',	'Janete',	'Limeira',	'Rio de Janeiro',	'Brazil',	'(21) 555-3412'),
('330',	'Maurizio',	'Moroni',	'Reggio Emilia',	'Italy',	'0522-556721'),
('331',	'Victoria',	'Ashworth',	'London',	'UK',	'(171) 555-1212'),
('332',	'Pedro',	'Afonso',	'Sao Paulo',	'Brazil',	'(11) 555-7647'),
('333',	'Anabela',	'Domingues',	'Sao Paulo',	'Brazil',	'(11) 555-2167'),
('334',	'Patricia',	'McKenna',	'Cork',	'Ireland',	'2967 542'),
('335',	'Rita',	'Müller',	'Stuttgart',	'Germany',	'0711-020361'),
('336',	'José',	'Pedro Freyre',	'Sevilla',	'Spain',	'(95) 555 82 82'),
('337',	'Rene',	'Phillips',	'Anchorage',	'USA',	'(907) 555-7584'),
('338',	'Fran',	'Wilson',	'Portland',	'USA',	'(503) 555-9573'),
('339',	'Ana',	'Trujillo',	'México D.F.',	'Mexico',	'(5) 555-4729'),
('340',	'Liz',	'Nixon',	'Portland',	'USA',	'(503) 555-3612'),
('341',	'Janine',	'Labrune',	'Nantes',	'France',	'40.67.88.88'),
('342',	'Helen',	'Bennett',	'Cowes',	'UK',	'(198) 555-8888'),
('343',	'Guillermo',	'Fernández',	'México D.F.',	'Mexico',	'(5) 552-3745'),
('344',	'Philip',	'Cramer',	'Brandenburg',	'Germany',	'0555-09876'),
('345',	'Jose',	'Pavarotti',	'Boise',	'USA',	'(208) 555-8097'),
('346',	'Martín',	'Sommer',	'Madrid',	'Spain',	'(91) 555 22 82'),
('347',	'Lino',	'Rodriguez',	'Lisboa',	'Portugal',	'(1) 354-2534');

GO

INSERT INTO FP.RPSupplierInfo(SupplierID,	CompanyName,	ContactName,	TITLE,	City,	Country,	PhoneNumber,	FaxNumber) VALUES
('600001',	'Cooperativa de Quesos Las Cabras',	'Antonio del Valle Saavedra',	'',	'Oviedo',	'Spain',	'(98) 598 76 54',	''),
('600002',	'Leka Trading',	'Chandra Leka',	'',	'Singapore',	'Singapore',	'555-8787',	''),
('600003',	'Formaggi Fortini s.r.l.',	'Elio Rossi',	'',	'Ravenna',	'Italy',	'(0544) 60323',	'(0544) 60603'),
('600004',	'Mayumis',	'Mayumi Ohno',	'',	'Osaka',	'Japan',	'(06) 431-7877',	''),
('600005',	'Gday, Mate',	'Wendy Mackenzie',	'',	'Sydney',	'Australia',	'(02) 555-5914',	'(02) 555-4873'),
('600006',	'New England Seafood Cannery',	'Robb Merchant',	'',	'Boston',	'USA',	'(617) 555-3267',	'(617) 555-3389'),
('600007',	'New Orleans Cajun Delights',	'Shelley Burke',	'',	'New Orleans',	'USA',	'(100) 555-4822',	''),
('600008',	'PB Knäckebröd AB',	'Lars Peterson',	'',	'Göteborg',	'Sweden',	'031-987 65 43',	'031-987 65 91'),
('600009',	'Pasta Buttini s.r.l.',	'Giovanni Giudici',	'',	'Salerno',	'Italy',	'(089) 6547665',	'(089) 6547667'),
('600010',	'Specialty Biscuits, Ltd.',	'Peter Wilson',	'',	'Manchester',	'UK',	'(161) 555-4448',	''),
('600011',	'Norske Meierier',	'Beate Vileid',	'',	'Sandvika',	'Norway',	'(0)2-953010',	''),
('600012',	'Gai pâturage',	'Eliane Noz',	'',	'Annecy',	'France',	'38.76.98.06',	'38.76.98.58'),
('600013',	'Aux joyeux ecclésiastiques',	'Guylène Nodier',	'',	'Paris',	'France',	'(1) 03.83.00.68',	'(1) 03.83.00.62'),
('600014',	'Karkki Oy',	'Anne Heikkonen',	'',	'Lappeenranta',	'Finland',	'(953) 10956',	''),
('600015',	'Refrescos Americanas LTDA',	'Carlos Diaz',	'',	'Sao Paulo',	'Brazil',	'(11) 555 4640',	''),
('600016',	'Ma Maison',	'Jean-Guy Lauzon',	'',	'Montréal',	'Canada',	'(514) 555-9022',	''),
('600017',	'Tokyo Traders',	'Yoshi Nagase',	'',	'Tokyo',	'Japan',	'(03) 3555-5011',	''),
('600018',	'Exotic Liquids',	'Charlotte Cooper',	'',	'London',	'UK',	'(171) 555-2222',	''),
('600019',	'Pavlova, Ltd.',	'Ian Devling',	'',	'Melbourne',	'Australia',	'(03) 444-2343',	'(03) 444-6588'),
('600020',	'Svensk Sjöföda AB',	'Michael Björn',	'',	'Stockholm',	'Sweden',	'08-123 45 67',	''),
('600021',	'Plutzer Lebensmittelgroßmärkte AG',	'Martin Bein',	'',	'Frankfurt',	'Germany',	'(069) 992755',	''),
('600022',	'Heli Süßwaren GmbH & Co. KG',	'Petra Winkler',	'',	'Berlin',	'Germany',	'(010) 9984510',	''),
('600023',	'Forêts dérables',	'Chantal Goulet',	'',	'Ste-Hyacinthe',	'Canada',	'(514) 555-2955',	'(514) 555-2921'),
('600024',	'Bigfoot Breweries',	'Cheryl Saylor',	'',	'Bend',	'USA',	'(503) 555-9931',	''),
('600025',	'Grandma Kellys Homestead',	'Regina Murphy',	'',	'Ann Arbor',	'USA',	'(313) 555-5735',	'(313) 555-3349'),
('600026',	'Nord-Ost-Fisch Handelsgesellschaft mbH',	'Sven Petersen',	'',	'Cuxhaven',	'Germany',	'(04721) 8713',	'(04721) 8714'),
('600027',	'Lyngbysild',	'Niels Petersen',	'',	'Lyngby',	'Denmark',	'43844108',	'43844115'),
('600028',	'Escargots Nouveaux',	'Marie Delamare',	'',	'Montceau',	'France',	'85.57.00.07',	'');

UPDATE FP.RPSupplierInfo SET TITLE = NULL WHERE Title = '' ;

UPDATE FP.RPSupplierInfo SET FaxNumber = NULL WHERE FaxNumber = '' ;

GO

INSERT INTO FP.RPProductInfo(ProductID,	ItemSoldName,	RetailPrice,	Packaging,	IsDiscontinued,	SupplierID) VALUES
('4000',	'Queso Cabrales',	21.00	,'1 kg pkg.',	'0',	'600001'),
('4001',	'Singaporean Hokkien Fried Mee',	14.00	,'32 - 1 kg pkgs.',	'1',	'600002'),
('4002',	'Mozzarella di Giovanni',	34.80	,'24 - 200 g pkgs.',	'0',	'600003'),
('4003',	'Tofu',	23.25	,'40 - 100 g pkgs.',	'0',	'600004'),
('4004',	'Manjimup Dried Apples',	53.00	,'50 - 300 g pkgs.',	'0',	'600005'),
('4005',	'Jacks New England Clam Chowder',	9.65	,'12 - 12 oz cans',	'0',	'600006'),
('4006',	'Louisiana Fiery Hot Pepper Sauce',	21.05	,'32 - 8 oz bottles',	'0',	'600007'),
('4007',	'Gustafs Knäckebröd',	21.00	,'24 - 500 g pkgs.',	'0',	'600008'),
('4008',	'Ravioli Angelo',	19.50	,'24 - 250 g pkgs.',	'0',	'600009'),
('4009',	'Sir Rodneys Marmalade',	81.00	,'30 gift boxes',	'0',	'600010'),
('4010',	'Geitost',	2.50	,'500 g',	'0',	'600011'),
('4011',	'Camembert Pierrot',	34.00	,'15 - 300 g rounds',	'0',	'600012'),
('4012',	'Gorgonzola Telino',	12.50	,'12 - 100 g pkgs',	'0',	'600003'),
('4013',	'Chartreuse verte',	18.00	,'750 cc per bottle',	'0',	'600013'),
('4014',	'Maxilaku',	20.00	,'24 - 50 g pkgs.',	'0',	'600014'),
('4015',	'Guaraná Fantástica',	4.50	,'12 - 355 ml cans',	'1',	'600015'),
('4016',	'Pâté chinois',	24.00	,'24 boxes x 2 pies',	'0',	'600016'),
('4017',	'Longlife Tofu',	10.00	,'5 kg pkg.',	'0',	'600017'),
('4018',	'Chang',	19.00	,'24 - 12 oz bottles',	'0',	'600018'),
('4019',	'Pavlova',	17.45	,'32 - 500 g boxes',	'0',	'600019'),
('4020',	'Inlagd Sill',	19.00	,'24 - 250 g jars',	'0',	'600020'),
('4021',	'Raclette Courdavault',	55.00	,'5 kg pkg.',	'0',	'600012'),
('4022',	'Perth Pasties',	32.80	,'48 pieces',	'1',	'600005'),
('4023',	'Original Frankfurter grüne Soße',	13.00	,'12 boxes',	'0',	'600021'),
('4024',	'Schoggi Schokolade',	43.90	,'100 - 100 g pieces',	'0',	'600022'),
('4025',	'Chef Antons Gumbo Mix',	21.35	,'36 boxes',	'1',	'600007'),
('4026',	'Mascarpone Fabioli',	32.00	,'24 - 200 g pkgs.',	'0',	'600003'),
('4027',	'Sir Rodneys Scones',	10.00	,'24 pkgs. x 4 pieces',	'0',	'600010'),
('4028',	'Gravad lax',	26.00	,'12 - 500 g pkgs.',	'0',	'600020'),
('4029',	'Tarte au sucre',	49.30	,'48 pies',	'0',	'600023'),
('4030',	'Outback Lager',	15.00	,'24 - 355 ml bottles',	'0',	'600019'),
('4031',	'Steeleye Stout',	18.00	,'24 - 12 oz bottles',	'0',	'600024'),
('4032',	'Uncle Bobs Organic Dried Pears',	30.00	,'12 - 1 lb pkgs.',	'0',	'600025'),
('4033',	'Gnocchi di nonna Alice',	38.00	,'24 - 250 g pkgs.',	'0',	'600009'),
('4034',	'Nord-Ost Matjeshering',	25.89	,'10 - 200 g glasses',	'0',	'600026'),
('4035',	'Alice Mutton',	39.00	,'20 - 1 kg tins',	'1',	'600019'),
('4036',	'Queso Manchego La Pastora',	38.00	,'10 - 500 g pkgs.',	'0',	'600001'),
('4037',	'Boston Crab Meat',	18.40	,'24 - 4 oz tins',	'0',	'600006'),
('4038',	'Lakkalikööri',	18.00	,'500 ml',	'0',	'600014'),
('4039',	'Thüringer Rostbratwurst',	123.79	,'50 bags x 30 sausgs.',	'1',	'600021'),
('4040',	'Ipoh Coffee',	46.00	,'16 - 500 g tins',	'0',	'600002'),
('4041',	'Ikura',	31.00	,'12 - 200 ml jars',	'0',	'600017'),
('4042',	'Flotemysost',	21.50	,'10 - 500 g pkgs.',	'0',	'600011'),
('4043',	'Konbu',	6.00	,'2 kg box',	'0',	'600004'),
('4044',	'Rössle Sauerkraut',	45.60	,'25 - 825 g cans',	'1',	'600021'),
('4045',	'Gula Malacca',	19.45	,'20 - 2 kg bags',	'0',	'600002'),
('4046',	'Vegie-spread',	43.90	,'15 - 625 g jars',	'0',	'600019'),
('4047',	'Röd Kaviar',	15.00	,'24 - 150 g jars',	'0',	'600020'),
('4048',	'Rhönbräu Klosterbier',	7.75	,'24 - 0.5 l bottles',	'0',	'600021'),
('4049',	'Teatime Chocolate Biscuits',	9.20	,'10 boxes x 12 pieces',	'0',	'600010'),
('4050',	'Genen Shouyu',	15.50	,'24 - 250 ml bottles',	'0',	'600004'),
('4051',	'Laughing Lumberjack Lager',	14.00	,'24 - 12 oz bottles',	'0',	'600024'),
('4052',	'Chai',	18.00	,'10 boxes x 20 bags',	'0',	'600018'),
('4053',	'Sasquatch Ale',	14.00	,'24 - 12 oz bottles',	'0',	'600024'),
('4054',	'Spegesild',	12.00	,'4 - 450 g glasses',	'0',	'600027'),
('4055',	'Tourtière',	7.45	,'16 pies',	'0',	'600016'),
('4056',	'Scottish Longbreads',	12.50	,'10 boxes x 8 pieces',	'0',	'600010'),
('4057',	'Aniseed Syrup',	10.00	,'12 - 550 ml bottles',	'0',	'600018'),
('4058',	'Wimmers gute Semmelknödel',	33.25	,'20 bags x 4 pieces',	'0',	'600021'),
('4059',	'Carnarvon Tigers',	62.50	,'16 kg pkg.',	'0',	'600019'),
('4060',	'Gudbrandsdalsost',	36.00	,'10 kg pkg.',	'0',	'600011'),
('4061',	'Louisiana Hot Spiced Okra',	17.00	,'24 - 8 oz jars',	'0',	'600007'),
('4062',	'Chef Antons Cajun Seasoning',	22.00	,'48 - 6 oz jars',	'0',	'600007'),
('4063',	'Grandmas Boysenberry Spread',	25.00	,'12 - 8 oz jars',	'0',	'600025'),
('4064',	'Escargots de Bourgogne',	13.25	,'24 pieces',	'0',	'600028'),
('4065',	'Filo Mix',	7.00	,'16 - 2 kg boxes',	'0',	'600005'),
('4066',	'NuNuCa Nuß-Nougat-Creme',	14.00	,'20 - 450 g glasses',	'0',	'600022'),
('4067',	'Côte de Blaye',	263.50	,'12 - 75 cl bottles',	'0',	'600013');

GO

INSERT INTO FP.RPOrders(CustomerID,	OrderNumber,	OrderDate,	TotalAmount) VALUES
('300',	'542378',	'2012-07-04'	 ,440), 
('301',	'542379',	'2012-07-05'	 ,1863.4), 
('302',	'542380',	'2012-07-08'	 ,1813), 
('303',	'542381',	'2012-07-08'	 ,670.8), 
('304',	'542382',	'2012-07-09'	 ,3730), 
('302',	'542383',	'2012-07-10'	 ,1444.8), 
('305',	'542384',	'2012-07-11'	 ,625.2), 
('306',	'542385',	'2012-07-12'	 ,2490.5), 
('307',	'542386',	'2012-07-15'	 ,517.8), 
('308',	'542387',	'2012-07-16'	 ,1119.9), 
('309',	'542388',	'2012-07-17'	 ,2018.6), 
('310',	'542389',	'2012-07-18'	 ,100.8), 
('311',	'542390',	'2012-07-19'	 ,1746.2), 
('312',	'542391',	'2012-07-19'	 ,448), 
('313',	'542392',	'2012-07-22'	 ,624.8), 
('309',	'542393',	'2012-07-23'	 ,2464.8), 
('314',	'542394',	'2012-07-24'	 ,724.5), 
('315',	'542395',	'2012-07-25'	 ,1176), 
('316',	'542396',	'2012-07-26'	 ,364.8), 
('317',	'542397',	'2012-07-29'	 ,4031), 
('318',	'542398',	'2012-07-30'	 ,1101.2), 
('319',	'542399',	'2012-07-31'	 ,676), 
('316',	'542400',	'2012-08-01'	 ,1376), 
('320',	'542401',	'2012-08-01'	 ,48), 
('313',	'542402',	'2012-08-02'	 ,1456), 
('321',	'542403',	'2012-08-05'	 ,2142.4), 
('300',	'542404',	'2012-08-06'	 ,538.6), 
('322',	'542405',	'2012-08-07'	 ,307.2), 
('323',	'542406',	'2012-08-08'	 ,420), 
('324',	'542407',	'2012-08-09'	 ,1200.8), 
('325',	'542408',	'2012-08-12'	 ,1488.8), 
('326',	'542409',	'2012-08-13'	 ,468), 
('325',	'542410',	'2012-08-14'	 ,613.2), 
('327',	'542411',	'2012-08-14'	 ,86.5), 
('327',	'542412',	'2012-08-15'	 ,155.4), 
('328',	'542413',	'2012-08-16'	 ,1414.8), 
('326',	'542414',	'2012-08-19'	 ,1452), 
('321',	'542415',	'2012-08-20'	 ,2179.2), 
('321',	'542416',	'2012-08-21'	 ,3016), 
('329',	'542417',	'2012-08-22'	 ,924), 
('330',	'542418',	'2012-08-23'	 ,89), 
('331',	'542419',	'2012-08-26'	 ,479.4), 
('332',	'542420',	'2012-08-27'	 ,2169), 
('312',	'542421',	'2012-08-27'	 ,552.8), 
('333',	'542422',	'2012-08-28'	 ,1296), 
('323',	'542423',	'2012-08-29'	 ,848.7), 
('313',	'542424',	'2012-08-30'	 ,1887.6), 
('300',	'542425',	'2012-09-02'	 ,121.6), 
('328',	'542426',	'2012-09-03'	 ,1050.6), 
('315',	'542427',	'2012-09-04'	 ,1420), 
('334',	'542428',	'2012-09-05'	 ,3127), 
('329',	'542429',	'2012-09-06'	 ,349.5), 
('322',	'542430',	'2012-09-09'	 ,608), 
('335',	'542431',	'2012-09-09'	 ,755), 
('304',	'542432',	'2012-09-10'	 ,2708.8), 
('336',	'542433',	'2012-09-11'	 ,1242), 
('323',	'542434',	'2012-09-12'	 ,954.4), 
('337',	'542435',	'2012-09-13'	 ,4157), 
('327',	'542436',	'2012-09-16'	 ,498.5), 
('338',	'542437',	'2012-09-17'	 ,424), 
('339',	'542438',	'2012-09-18'	 ,88.8), 
('334',	'542439',	'2012-09-19'	 ,1762), 
('340',	'542440',	'2012-09-20'	 ,336), 
('341',	'542441',	'2012-09-20'	 ,268.8), 
('335',	'542442',	'2012-09-23'	 ,1614.8), 
('321',	'542443',	'2012-09-24'	 ,182.4), 
('313',	'542444',	'2012-09-25'	 ,2327), 
('342',	'542445',	'2012-09-26'	 ,516.8), 
('313',	'542446',	'2012-09-27'	 ,2835), 
('338',	'542447',	'2012-09-30'	 ,288), 
('342',	'542448',	'2012-10-01'	 ,240.4), 
('323',	'542449',	'2012-10-02'	 ,1191.2), 
('316',	'542450',	'2012-10-03'	 ,516), 
('342',	'542451',	'2012-10-03'	 ,144), 
('343',	'542452',	'2012-10-04'	 ,112), 
('344',	'542453',	'2012-10-07'	 ,164.4), 
('345',	'542454',	'2012-10-08'	 ,6155.9), 
('344',	'542455',	'2012-10-09'	 ,1497), 
('346',	'542456',	'2012-10-10'	 ,982), 
('314',	'542457',	'2012-10-11'	 ,2262.5), 
('347',	'542458',	'2012-10-14'	 ,1168), 
('320',	'542459',	'2012-10-15'	 ,4819.4); 

GO

INSERT INTO FP.RPOrderDetails(OrderNumber,	Quanity,	SalesPrice,	ItemSoldName) VALUES
('542378',	12,	14,	'Queso Cabrales'),
('542378',	10,	9.8,	'Singaporean Hokkien Fried Mee'),
('542378',	5,	34.8,	'Mozzarella di Giovanni'),
('542379',	9,	18.6,	'Tofu'),
('542379',	40,	42.4,	'Manjimup Dried Apples'),
('542380',	10,	7.7,	'Jacks New England Clam Chowder'),
('542380',	35,	42.4,	'Manjimup Dried Apples'),
('542380',	15,	16.8,	'Louisiana Fiery Hot Pepper Sauce'),
('542381',	6,	16.8,	'Gustafs Knäckebröd'),
('542381',	15,	15.6,	'Ravioli Angelo'),
('542381',	20,	16.8,	'Louisiana Fiery Hot Pepper Sauce'),
('542382',	40,	64.8,	'Sir Rodneys Marmalade'),
('542382',	25,	2,	'Geitost'),
('542382',	40,	27.2,	'Camembert Pierrot'),
('542383',	20,	10,	'Gorgonzola Telino'),
('542383',	42,	14.4,	'Chartreuse verte'),
('542383',	40,	16,	'Maxilaku'),
('542384',	15,	3.6,	'Guaraná Fantástica'),
('542384',	21,	19.2,	'Pâté chinois'),
('542384',	21,	8,	'Longlife Tofu'),
('542385',	20,	15.2,	'Chang'),
('542385',	35,	13.9,	'Pavlova'),
('542385',	25,	15.2,	'Inlagd Sill'),
('542385',	30,	44,	'Raclette Courdavault'),
('542386',	15,	26.2,	'Perth Pasties'),
('542386',	12,	10.4,	'Original Frankfurter grüne Soße'),
('542387',	25,	35.1,	'Schoggi Schokolade'),
('542387',	6,	14.4,	'Chartreuse verte'),
('542387',	15,	10.4,	'Original Frankfurter grüne Soße'),
('542388',	50,	15.2,	'Chang'),
('542388',	65,	17,	'Chef Antons Gumbo Mix'),
('542388',	6,	25.6,	'Mascarpone Fabioli'),
('542389',	10,	8,	'Sir Rodneys Scones'),
('542389',	1,	20.8,	'Gravad lax'),
('542390',	16,	7.7,	'Jacks New England Clam Chowder'),
('542390',	50,	15.6,	'Ravioli Angelo'),
('542390',	15,	39.4,	'Tarte au sucre'),
('542390',	21,	12,	'Outback Lager'),
('542391',	20,	8,	'Sir Rodneys Scones'),
('542391',	20,	14.4,	'Steeleye Stout'),
('542392',	12,	17,	'Chef Antons Gumbo Mix'),
('542392',	15,	24,	'Uncle Bobs Organic Dried Pears'),
('542392',	2,	30.4,	'Gnocchi di nonna Alice'),
('542393',	60,	13.9,	'Pavlova'),
('542393',	28,	3.6,	'Guaraná Fantástica'),
('542393',	60,	20.7,	'Nord-Ost Matjeshering'),
('542393',	36,	8,	'Longlife Tofu'),
('542394',	35,	15.2,	'Chang'),
('542394',	25,	7.7,	'Jacks New England Clam Chowder'),
('542395',	30,	31.2,	'Alice Mutton'),
('542395',	20,	12,	'Outback Lager'),
('542396',	12,	30.4,	'Queso Manchego La Pastora'),
('542397',	50,	14.7,	'Boston Crab Meat'),
('542397',	70,	44,	'Raclette Courdavault'),
('542397',	15,	14.4,	'Lakkalikööri'),
('542398',	10,	99,	'Thüringer Rostbratwurst'),
('542398',	4,	27.8,	'Mozzarella di Giovanni'),
('542399',	60,	2,	'Geitost'),
('542399',	20,	27.8,	'Mozzarella di Giovanni'),
('542400',	30,	15.2,	'Inlagd Sill'),
('542400',	25,	36.8,	'Ipoh Coffee'),
('542401',	24,	2,	'Geitost'),
('542402',	6,	64.8,	'Sir Rodneys Marmalade'),
('542402',	40,	10,	'Gorgonzola Telino'),
('542402',	24,	27.8,	'Mozzarella di Giovanni'),
('542403',	24,	24.8,	'Ikura'),
('542403',	15,	10,	'Gorgonzola Telino'),
('542403',	20,	2,	'Geitost'),
('542403',	60,	14.7,	'Boston Crab Meat'),
('542403',	33,	14.4,	'Lakkalikööri'),
('542404',	20,	17.2,	'Flotemysost'),
('542404',	7,	27.8,	'Mozzarella di Giovanni'),
('542405',	12,	3.6,	'Guaraná Fantástica'),
('542405',	6,	44,	'Raclette Courdavault'),
('542406',	15,	24.8,	'Ikura'),
('542406',	10,	4.8,	'Konbu'),
('542407',	20,	36.4,	'Rössle Sauerkraut'),
('542407',	12,	39.4,	'Tarte au sucre'),
('542408',	16,	15.5,	'Gula Malacca'),
('542408',	15,	44,	'Raclette Courdavault'),
('542408',	8,	35.1,	'Vegie-spread'),
('542408',	25,	12,	'Röd Kaviar'),
('542409',	15,	31.2,	'Alice Mutton'),
('542410',	12,	3.6,	'Guaraná Fantástica'),
('542410',	20,	19.2,	'Pâté chinois'),
('542410',	30,	6.2,	'Rhönbräu Klosterbier'),
('542411',	1,	7.3,	'Teatime Chocolate Biscuits'),
('542411',	6,	3.6,	'Guaraná Fantástica'),
('542411',	4,	14.4,	'Steeleye Stout'),
('542412',	6,	20.7,	'Nord-Ost Matjeshering'),
('542412',	2,	15.6,	'Ravioli Angelo'),
('542413',	20,	12.4,	'Genen Shouyu'),
('542413',	18,	7.3,	'Teatime Chocolate Biscuits'),
('542413',	35,	27.2,	'Camembert Pierrot'),
('542413',	3,	27.8,	'Mozzarella di Giovanni'),
('542414',	15,	35.1,	'Schoggi Schokolade'),
('542414',	21,	15.5,	'Gula Malacca'),
('542414',	20,	27.2,	'Camembert Pierrot'),
('542414',	5,	11.2,	'Laughing Lumberjack Lager'),
('542415',	45,	14.4,	'Chai'),
('542415',	40,	14.7,	'Boston Crab Meat'),
('542415',	36,	26.2,	'Perth Pasties'),
('542416',	100,	14.4,	'Steeleye Stout'),
('542416',	40,	39.4,	'Tarte au sucre'),
('542417',	40,	13.9,	'Pavlova'),
('542417',	20,	11.2,	'Sasquatch Ale'),
('542417',	15,	9.6,	'Spegesild'),
('542418',	10,	5.9,	'Tourtière'),
('542418',	3,	10,	'Scottish Longbreads'),
('542419',	30,	8,	'Aniseed Syrup'),
('542419',	9,	26.6,	'Wimmers gute Semmelknödel'),
('542420',	20,	17,	'Chef Antons Gumbo Mix'),
('542420',	15,	99,	'Thüringer Rostbratwurst'),
('542420',	15,	16,	'Maxilaku'),
('542420',	10,	10.4,	'Original Frankfurter grüne Soße'),
('542421',	20,	4.8,	'Konbu'),
('542421',	24,	15.5,	'Gula Malacca'),
('542421',	2,	42.4,	'Manjimup Dried Apples'),
('542422',	20,	64.8,	'Sir Rodneys Marmalade'),
('542423',	12,	50,	'Carnarvon Tigers'),
('542423',	10,	3.6,	'Guaraná Fantástica'),
('542423',	5,	35.1,	'Vegie-spread'),
('542423',	6,	6.2,	'Rhönbräu Klosterbier'),
('542424',	18,	14.4,	'Chai'),
('542424',	15,	31.2,	'Alice Mutton'),
('542424',	15,	36.8,	'Ipoh Coffee'),
('542424',	21,	27.2,	'Camembert Pierrot'),
('542424',	6,	6.2,	'Rhönbräu Klosterbier'),
('542425',	4,	30.4,	'Gnocchi di nonna Alice'),
('542426',	12,	16.8,	'Queso Cabrales'),
('542426',	30,	13.9,	'Pavlova'),
('542426',	15,	28.8,	'Gudbrandsdalsost'),
('542427',	60,	14.4,	'Chartreuse verte'),
('542427',	20,	27.8,	'Mozzarella di Giovanni'),
('542428',	40,	15.2,	'Chang'),
('542428',	40,	15.2,	'Inlagd Sill'),
('542428',	30,	44,	'Raclette Courdavault'),
('542428',	15,	39.4,	'Tarte au sucre'),
('542429',	15,	7.3,	'Teatime Chocolate Biscuits'),
('542429',	20,	12,	'Outback Lager'),
('542430',	30,	13.6,	'Louisiana Hot Spiced Okra'),
('542430',	20,	10,	'Scottish Longbreads'),
('542431',	10,	14.7,	'Boston Crab Meat'),
('542431',	20,	30.4,	'Gnocchi di nonna Alice'),
('542432',	40,	31.2,	'Alice Mutton'),
('542432',	28,	36.4,	'Rössle Sauerkraut'),
('542432',	12,	36.8,	'Ipoh Coffee'),
('542433',	40,	14.7,	'Boston Crab Meat'),
('542433',	30,	16.8,	'Louisiana Fiery Hot Pepper Sauce'),
('542433',	15,	10,	'Scottish Longbreads'),
('542434',	30,	16,	'Maxilaku'),
('542434',	10,	44,	'Raclette Courdavault'),
('542434',	2,	17.2,	'Flotemysost'),
('542435',	25,	50,	'Carnarvon Tigers'),
('542435',	25,	99,	'Thüringer Rostbratwurst'),
('542435',	30,	14.4,	'Chartreuse verte'),
('542436',	10,	20.7,	'Nord-Ost Matjeshering'),
('542436',	10,	26.2,	'Perth Pasties'),
('542436',	5,	5.9,	'Tourtière'),
('542437',	10,	39.4,	'Tarte au sucre'),
('542437',	3,	10,	'Scottish Longbreads'),
('542438',	1,	28.8,	'Gudbrandsdalsost'),
('542438',	5,	12,	'Outback Lager'),
('542439',	20,	17.6,	'Chef Antons Cajun Seasoning'),
('542439',	30,	20,	'Grandmas Boysenberry Spread'),
('542439',	2,	11.2,	'Singaporean Hokkien Fried Mee'),
('542439',	20,	36.8,	'Ipoh Coffee'),
('542439',	3,	17.2,	'Flotemysost'),
('542440',	10,	13.9,	'Pavlova'),
('542440',	5,	39.4,	'Tarte au sucre'),
('542441',	6,	11.2,	'Singaporean Hokkien Fried Mee'),
('542441',	7,	28.8,	'Gudbrandsdalsost'),
('542442',	4,	36.4,	'Rössle Sauerkraut'),
('542442',	24,	36.8,	'Ipoh Coffee'),
('542442',	20,	26.2,	'Perth Pasties'),
('542442',	10,	6.2,	'Rhönbräu Klosterbier'),
('542443',	12,	15.2,	'Inlagd Sill'),
('542444',	40,	25.6,	'Mascarpone Fabioli'),
('542444',	30,	10.6,	'Escargots de Bourgogne'),
('542444',	25,	39.4,	'Tarte au sucre'),
('542445',	14,	11.2,	'Sasquatch Ale'),
('542445',	30,	12,	'Outback Lager'),
('542446',	10,	7.7,	'Jacks New England Clam Chowder'),
('542446',	70,	39.4,	'Tarte au sucre'),
('542447',	20,	14.4,	'Chai'),
('542448',	20,	7.7,	'Jacks New England Clam Chowder'),
('542448',	6,	14.4,	'Lakkalikööri'),
('542449',	8,	31.2,	'Alice Mutton'),
('542449',	14,	36.4,	'Rössle Sauerkraut'),
('542449',	30,	14.4,	'Lakkalikööri'),
('542450',	30,	17.2,	'Flotemysost'),
('542451',	10,	14.4,	'Steeleye Stout'),
('542452',	20,	5.6,	'Filo Mix'),
('542453',	5,	12.4,	'Genen Shouyu'),
('542453',	4,	11.2,	'NuNuCa Nuß-Nougat-Creme'),
('542453',	4,	14.4,	'Chartreuse verte'),
('542454',	21,	13.9,	'Pavlova'),
('542454',	70,	14.4,	'Steeleye Stout'),
('542454',	30,	9.6,	'Spegesild'),
('542454',	40,	44,	'Raclette Courdavault'),
('542454',	80,	35.1,	'Vegie-spread'),
('542455',	6,	20,	'Grandmas Boysenberry Spread'),
('542455',	12,	4.8,	'Konbu'),
('542455',	9,	18.6,	'Tofu'),
('542455',	4,	10,	'Gorgonzola Telino'),
('542455',	40,	27.8,	'Mozzarella di Giovanni'),
('542456',	24,	17.6,	'Chef Antons Cajun Seasoning'),
('542456',	16,	15.6,	'Ravioli Angelo'),
('542456',	50,	6.2,	'Rhönbräu Klosterbier'),
('542457',	25,	15.2,	'Chang'),
('542457',	50,	16.8,	'Queso Cabrales'),
('542457',	35,	20.7,	'Nord-Ost Matjeshering'),
('542457',	30,	10.6,	'Escargots de Bourgogne'),
('542458',	9,	44,	'Raclette Courdavault'),
('542458',	40,	16.8,	'Louisiana Fiery Hot Pepper Sauce'),
('542458',	10,	10,	'Scottish Longbreads'),
('542459',	10,	7.3,	'Teatime Chocolate Biscuits'),
('542459',	8,	20.7,	'Nord-Ost Matjeshering'),
('542459',	20,	210.8,	'Côte de Blaye'),
('542459',	12,	30.4,	'Gnocchi di nonna Alice');


UPDATE FP.RPOrderDetails SET ProductID = P.ProductID FROM FP.RPProductInfo as P INNER 
JOIN FP.RPOrderDetails as OD on p.ItemSoldName = od.ItemSoldName ;

ALTER TABLE FP.RPOrderDetails Drop Column ItemSoldName ;

ALTER TABLE FP.RPOrderDetails ALTER COLUMN ProductID char(4) not null ;


GO

/*
	Place ALTER TABLE Relationship KEY comamnds after this comment
	e.g. ALTER TABLE
*/
ALTER TABLE FP.RPCustomers ADD CONSTRAINT PKCustomerID PRIMARY KEY (CustomerID) ; 

ALTER TABLE FP.RPSupplierInfo ADD CONSTRAINT PKSupplierID PRIMARY KEY (SupplierID) ; 

ALTER TABLE FP.RPProductInfo ADD CONSTRAINT PKProductID PRIMARY KEY (ProductID) ; 

ALTER TABLE FP.RPOrders ADD CONSTRAINT PKOrderNumber PRIMARY KEY (OrderNumber) ; 

ALTER TABLE FP.RPOrderDetails ADD CONSTRAINT PKOrderDetails PRIMARY KEY (OrderNumber, ProductID) ; 
GO

ALTER TABLE FP.RPOrders ADD CONSTRAINT FK_RPOrders_CustomerID Foreign KEY (CustomerID) References FP.RPCustomers(CustomerID) ;

ALTER TABLE FP.RPProductInfo ADD CONSTRAINT FK_RPProductInfo_SupplierID Foreign KEY (SupplierID) References FP.RPSupplierInfo(SupplierID) ;

ALTER TABLE FP.RPOrderDetails ADD CONSTRAINT FK_RPOrderDetails_OrderNumber Foreign KEY (OrderNumber) References FP.RPOrders (OrderNumber) ;

ALTER TABLE FP.RPOrderDetails ADD CONSTRAINT FK_RPOrderDetails_ProductID Foreign KEY (ProductID) References FP.RPProductInfo (ProductID) ;


GO

/*
	Place answers to the query questions after this comment
	e.g. SELECT 
*/
SELECT * FROM FP.RPSupplierInfo
WHERE FaxNumber is NULL
ORDER BY PhoneNumber ASC ;
GO

/*Show all products where they are missing a fax number of the supplier and the Retail
Price of the product is over $40.00. Sort it by the price of the product*/
SELECT P.ItemSoldName, P.RetailPrice 
FROM FP.RPProductInfo as P
LEFT JOIN FP.RPSupplierInfo as S on S.SupplierID = P.SupplierID 
WHERE P.RetailPrice > 40.00 and S.FaxNumber is NULL 
ORDER BY P.RetailPrice ASC ;
GO

/*Show all orders that total over $4,000. Be sure to include Order Number,
Customer First and Last Name, Order Date, Product Name, Quantity, and how
much they paid for the product. Sort it by quantity of items (10 points). */
SELECT FP.RPOrders.OrderNumber, FirstName, LastName, OrderDate, FP.RPProductInfo.ItemSoldName, Quanity, SalesPrice, TotalAmount
FROM FP.RPOrders 
LEFT JOIN FP.RPOrderDetails on FP.RPOrderDetails.OrderNumber = FP.RPOrders.OrderNumber
LEFT JOIN FP.RPProductInfo on FP.RPProductInfo.ProductID = FP.RPOrderDetails.ProductID 
LEFT JOIN FP.RPCustomers on FP.RPOrders.CustomerID = FP.RPCustomers.CustomerID  
WHERE TotalAmount > 4000.00 
ORDER BY Quanity ASC ;
GO
/*
Write a query that re-creates the original spreadsheet. You should order it by the
OrderNumber. Regarding the generic column names (column1, column2, etc.)
use your new column names 
*/
SELECT FirstName, LastName, FP.RPCustomers.City, FP.RPCustomers.Country, FP.RPCustomers.PhoneNumber, FP.RPOrders.OrderNumber, OrderDate, TotalAmount, Quanity, SalesPrice, ItemSoldName, RetailPrice, Packaging, IsDiscontinued, CompanyName, ContactName, Title, FP.RPSupplierInfo.City, FP.RPSupplierInfo.Country, FP.RPSupplierInfo.PhoneNumber, FaxNumber
FROM FP.RPOrderDetails
LEFT JOIN FP.RPProductInfo on FP.RPProductInfo.ProductID = FP.RPOrderDetails.ProductID 
LEFT JOIN FP.RPSupplierInfo on FP.RPSupplierInfo.SupplierID = FP.RPProductInfo.SupplierID
RIGHT JOIN FP.RPOrders on FP.RPOrders.OrderNumber = FP.RPOrderDetails.OrderNumber
RIGHT JOIN FP.RPCustomers on FP.RPCustomers.CustomerID = FP.RPOrders.CustomerID 
ORDER BY OrderNumber ASC ;
GO