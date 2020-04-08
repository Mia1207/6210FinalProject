USE FinalProject;

-----Insert Data-----
INSERT INTO CUSTOMER (CustomerID, CustomerName, CustomerLevel,CustomerAddress,CustomerCity,CustomerState,CustomerPostalCode,CustomerPhoneNumber) VALUES
('2001','Kanye West','Silver','7 9th St','Boston','MA','02155','7278360281'),
('2002','Kendall Jenner','Gold','70 Peterborough St','Boston','MA','02215','7290461029'),
('2003','James Harden','Bronze','W 100 St','NewYork City','NY','10256','8578793938'),
('2004','Steven Hill','Diamond','N 76th St','Saint Louis','MO','65411','5733097929'),
('2005','Kevin Smith','Platinum','80 South St','Augusta','ME','33091','8782561265'),
('2006','Chandler Bing','Silver','W 99 St','NewYork City','NY','10987','6678573927'),
('2007','Joey Jackman','Gold','Sunset St','Los Angles','CA','50278','5989291394'),
('2008','Monica Galler','Diamond','Bacon St','Chicago','IL','66727','5872876732'),
('2009','Hui Zhang','Platinum','87th Santa st','Miami','FL','08762','6892918378'),
('2010','Kendric Lamar','Bronze','Lasvegas St','Lasvegas','NV','56789','8765289139');

INSERT INTO CUSTOMER_SERVICE (CenterID, CenterName, CenterAddress,CenterCity,CenterState,CenterPostalCode) VALUES
('100','Bloomingdale','5th Ave','NewYork City','NY','10256'),
('101','Star','Rolla St','Saint Louis','MO','65271'),
('102','Domino','Larned St','Detroit','MI','48226'),
('103','Target','Brush St','Chicago','IL','88227'),
('104','Walmart','W Jackson St','Los Angles','CA','55678'),
('105','Galleria','North 89th St','Salk Lake City','UT','36789'),
('106','Bronze','Fenway St','Boston','MA','11298'),
('107','Fifth','Fifth Ave','Houston','TX','85776'),
('108','Nordwood','68th St','Topeka','KS','39802'),
('109','Northeastern','340 Huntig Ave','Columbia','OH','90813'),
('110','PriceChopper','Newyork St','Helena','MT','77813');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeName, EmployeeGender,EmployeeSalary,EmployeeAddress,EmployeeCity,EmployeeState,EmployeePostalCode,EmployeePhoneNumber,EmployeeFax) VALUES
('0001','Chris Brown','Other','3000','360 Huntington Ave','Boston','MA','02115','3820561639','3720416307'),
('0002','Lebron James','Male','10000','361 Huntington Ave','Boston','MA','02115','5872677123','3720416307'),
('0003','Jason Tatum','Male','3500','362 Huntington Ave','Boston','MA','02116','6897176827','3720416307'),
('0004','Kyle Kuzma','Female','6500','363 Huntington Ave','Boston','MA','02116','8907186723','3720416307'),
('0005','Dwight Howard','Male','8000','364 Huntington Ave','Boston','MA','02117','5627168787','3720416307'),
('0006','Dwyane Wade','Female','10000','365 Huntington Ave','Boston','MA','02117','9876521712','3720416307'),
('0007','Kevin Pope','Female','5000','366 Huntington Ave','Boston','MA','02118','8678018982','3720416307'),
('0008','Danny Green','Male','5500','367 Huntington Ave','Boston','MA','02118','5678279184','3720416307'),
('0009','Demar Cousins','Male','8000','368 Huntington Ave','Boston','MA','02119','6077809281','3720416307'),
('0010','Jenny Bradely','Female','7000','369 Huntington Ave','Boston','MA','02119','9183072617','3720416307');

INSERT INTO INTERSTATE_WAREHOUSE (WarehouseID, WarehouseName, WarehouseAddress,WarehouseCity,WarehouseState,WarehousePostalCode,WarehouseCapacity,WarehousePhoneNumber) VALUES
('201','Boston Public Storage','70 Park Drive','Boston','MA','02215','5000','1028352740'),
('202','Newyork City Public Storage','N 100th St','NewYork City','NY','12098','8000','3672871937'),
('203','Medford Storage','8 6th St','Medford','MA','02156','4000','7789821732'),
('204','StoringChicago','Chicago St','Chicago','IL','23901','7800','6891903972'),
('205','Los Angles Storage','Sunset St','Los Angles','CA','57829','10000','8920382741'),
('206','HoustonStorage','Texas St','Houston','TX','89201','12000','7798291384'),
('207','LasVegasWarehouse','Tremont St','Lasvegas','NV','27613','8900','2918304729'),
('208','SeattleStorage','Raymond St','Seattle','WA','39021','8500','4981001839'),
('209','OhioWarehouse','108 Strike St','Columbus','OH','88019','15000','2938104812'),
('210','LakeStorage','Lake St','Salt Lake City','UT','29304','6000','3339182422');

INSERT INTO POPUP_STORE (ShopID, ShopName, ShopAddress,ShopCity,ShopState,ShopPostalCode,ShopFax,ShopContact) VALUES
('301','K','1620 Tremont St','Boston','MA','02120','3782719272','Kylie Janner'),
('302','O','W 80th St','NewYork City','NY','10289','3672819302','Jerry Kim'),
('303','B','Fairfax Ave','Los Angles','CA','89021','5829381291','Steven Yuan'),
('304','E','Chicago St','Chicago','IL','87291','2938129031','Lian Liu'),
('305','B','Miami St','Miami','FL','67821','5562818319','Tom Hardy'),
('306','R','78th St','Houston','TX','25617','9082910312','James Westbrook'),
('307','Y','E 35th St','Denver','CO','78291','8293712818','Allen Iverson'),
('308','A','w 18th Ave','Charlotte','NC','29813','5678389282','Ken Walker'),
('309','N','8 5th St','New Orleans','LA','56272','4556728193','Anthony Davis'),
('310','T','Pitt St','Altanta','GA','66721','7782938113','Trae Young');

INSERT INTO [ORDER] (OrderID, OrderDescription, OrderStatus,OrderDate) VALUES
('38294710','30% Off','Open','2019-12-31 10:22:34'),
('45928402','Ship Delay','Open','2020-02-12 21:22:35'),
('36593293','Ship Soon','Open','2020-01-31 11:52:36'),
('10384652','NULL','Close','2020-04-12 10:22:37'),
('20745283','New Customer Offer','Pending','2019-08-30 23:22:38'),
('94645272','Gift Wrap','Close','2020-03-21 17:40:39'),
('93047522','Fragile Package','Close','2020-02-01 08:22:40'),
('24928452','Gift Wrap','Open','2019-12-31 10:22:41'),
('63738017',' 20 % OFF','Pending','2020-03-31 14:27:42'),
('46729272','Ship Soon','Pending','2020-04-07 22:22:43');

INSERT INTO PAYMENT (InvoiceNumber, OrderID, PaymentDate,PaymentAmount,PaymentMethod) VALUES
('53629302','38294710','2019-12-31 10:22:34','182','Cash'),
('14373920','45928402','2020-02-12 21:22:35','82.19','Debit Card'),
('84638292','36593293','2020-01-31 11:52:36','6.22','Debit Card'),
('47282047','10384652','2020-04-12 10:22:37','927','Check'),
('26474849','20745283','2019-08-30 23:22:38','62.11','Debit Card'),
('30284638','94645272','2020-03-21 17:40:39','37.29','Credit Card'),
('24173940','93047522','2020-02-01 08:22:40','72.1','Debit Card'),
('83745272','24928452','2019-12-31 10:22:41','100.23','Cash'),
('62829181','63738017','2020-03-31 14:27:42','24','Credit Card'),
('78201018','46729272','2020-04-07 22:22:43','15.99','Cash');

INSERT INTO PRODUCT (ProductID, ProductName, ProductCategories,ProductDescription,ProductStandardPrice) VALUES
('72927','Nike Kobe  Bryant Mamba DriFit','Tops & T-Shirts','Grey',63.99),
('75534','Kobe Bryant 2008-2009 Classic Jersey','Tops & T-Shirts','Purple',30.00),
('23456','Nike Men Basketball Short','Shorts','Black',55.00),
('34566','Nike 2020 New Kobe Bryant Men Sweater','Hoodies & Pullovers','White/Purple',159.99),
('85732','Nike Kobe Bryant Print Tracksuit','Pants & Tights','Grey',110.00),
('14574','Nike Black Mamba Never Die','Jackets & Vests','White/Purple',120.00),
('35225','Nike Black Mamba','Hoodies & Pullovers','Black',115.00),
('63467','Nike Kobe 3 SL MVP','Shoes','White/Varsity Purple-Varsity Maize',90.00),
('97853','Nike Kobe 2 ST USA','Shoes','Midnight Navy/White-Varsity Red',200.00),
('27231','Nike Kobe 1 Protro 81 Pt Game','Shoes','White/Black-Varsity Purple',175.00);

INSERT INTO SUPPLIER (SupplierID, SupplierName, SupplierAddress,SupplierCity,SupplierState,SupplierPostalCode,SupplierPhoneNumber,SupplierFax) VALUES
('1000','Selina Gomez','North 89th St','Salk Lake City','UT','36789','8299201732','7191028362'),
('1001','Taylor Swift','70 Park Drive','Boston','MA','02215','1028352740','2348374822'),
('1002','Charlie Puth','N 100th St','NewYork City','NY','12098','3672871937','3465656645'),
('1003','Nicki Minaj','8 6th St','Medford','MA','02156','7789821732','9876537932'),
('1004','Martin Garrix','Chicago St','Chicago','IL','23901','6891903972','3284140134'),
('1005','Liam Payne','Sunset St','Los Angles','CA','57829','8920382741','2415346457'),
('1006','KSHMR','Texas St','Houston','TX','89201','7798291384','7452413143'),
('1007','James Bay','Tremont St','Lasvegas','NV','27613','2918304729','5656254234'),
('1008','Sam Smith','Raymond St','Seattle','WA','39021','4981001839','9685674674'),
('1009','Cardie B','108 Strike St','Columbus','OH','88019','2938104812','6473625436');

INSERT INTO ORDER_LINE (OrderID, ProductID, ProductsQuantity,SaleUnitPrice) VALUES
('38294710','72927','10','59.99'),
('45928402','34566','1','159.99'),
('36593293','23456','2','49.99'),
('45928402','63467','1','149.99'),
('20745283','85732','1','110.00'),
('94645272','14574','1','120.00'),
('36593293','34566','5','139.99'),
('24928452','63467','2','79.99'),
('24928452','14574','2','120.00'),
('45928402','72927','2','63.97');

INSERT INTO SUPPLIER_LINE (SupplierID, ProductID, QuantityOfProduct,SupplyUnitPrice,SupplyDate) VALUES
('1009','72927','400','50.00','2019-12-31 10:22:34'),
('1002','72927','300','45.95','2020-02-12 21:22:35'),
('1005','23456','1000','35.00','2020-01-31 11:52:36'),
('1009','34566','42','120.00','2020-04-12 10:22:37'),
('1005','85732','5000','99.00','2019-08-30 23:22:38'),
('1009','14574','300','100.00','2020-03-21 17:40:39'),
('1000','63467','10000','85.00','2020-02-01 08:22:40'),
('1002','63467','30','88.00','2019-12-31 10:22:41'),
('1005','97853','200','179.00','2020-03-31 14:27:42'),
('1006','34566','1000','130.00','2020-04-07 22:22:43');

INSERT INTO CUSTOMER_VISIT (CustomerID, OrderID, ShopID,VisitDate,VisitFeedback) VALUES
('2003','38294710','301','2019-12-31 09:24:34','Very good'),
('2001','45928402','306','2020-02-12 21:02:35','Good'),
('2004','36593293','308','2020-01-31 10:52:36','Bad'),
('2005','10384652','301','2020-04-12 08:22:37','Good'),
('2004','20745283','308','2019-08-30 20:59:38','Very good'),
('2002','94645272','302','2020-03-21 15:40:39','Good'),
('2001','93047522','306','2020-02-01 08:11:40','Fair'),
('2009','24928452','302','2019-12-31 08:56:41','Very good'),
('2004','63738017','308','2020-03-31 12:27:42','Bad'),
('2003','46729272','301','2020-04-07 21:22:43','Very good');