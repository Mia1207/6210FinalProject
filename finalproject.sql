-------Create Database------
CREATE DATABASE FinalProject;
USE FinalProject;

------Create Table--------
CREATE TABLE CUSTOMER(
    CustomerID INT NOT NULL,
	CustomerName NVARCHAR(25),
    CustomerLevel VARCHAR(30) CONSTRAINT CustomerLevel_CHK CHECK (CustomerLevel IN ('Bronze', 'Silver', 'Gold', 
                                                                                        'Platinum', 'Diamond')),
	CustomerAddress VARCHAR(30),
	CustomerCity VARCHAR(20),
	CustomerState CHAR(2),
	CustomerPostalCode VARCHAR(9),
    CustomerPhoneNumber CHAR(10),
    CONSTRAINT CUSTOMER_PK PRIMARY KEY (CustomerID)
);
--新增City，State和PhoneNumber
--新增CostomerLevel, 用于“Table-level CHECK Constraints”

CREATE TABLE CUSTOMER_SERVICE(
    CenterID INT NOT NULL,
    CenterName NVARCHAR(50),
    CenterAddress VARCHAR(30),
    CenterCity VARCHAR(20),
    CenterState CHAR(2),
    CenterPostalCode VARCHAR(9),
    CONSTRAINT CUSTOMER_SERVICE_PK PRIMARY KEY (CenterID)
);
--新增city，state 

CREATE TABLE EMPLOYEE(
    EmployeeID INT NOT NULL,
	EmployeeName NVARCHAR(25),
    EmployeeGender VARCHAR(30) CONSTRAINT EmployeeGender_CHK CHECK (EmployeeGender IN ('Male', 'Female', 'Other')),
    EmployeeSalary DECIMAL(10,2),
	EmployeeAddress VARCHAR(30),
	EmployeeCity VARCHAR(20),
	EmployeeState CHAR(2),
	EmployeePostalCode VARCHAR(9),
    EmployeePhoneNumber CHAR(10),
    EmployeeFax CHAR(10),
    CONSTRAINT EMPLOYEE_PK PRIMARY KEY (EmployeeID)
);
--新增city，state

CREATE TABLE INTERSTATE_WAREHOUSE(
    WarehouseID INT NOT NULL,
    WarehouseName VARCHAR(30),
    WarehouseAddress VARCHAR(30),
    WarehouseCity VARCHAR(20),
    WarehouseState CHAR(2),
    WarehousePostalCode VARCHAR(9),
    WarehouseCapacity INT,
    WarehousePhoneNumber CHAR(10),
    CONSTRAINT INTERSTATE_WAREHOUSE_PK PRIMARY KEY (WarehouseID)
);
--新增city， state，phonenumber

CREATE TABLE POPUP_STORE(
    ShopID INT NOT NULL,
    ShopName NVARCHAR(50),
    ShopAddress VARCHAR(30),
    ShopCity VARCHAR(20),
    ShopState CHAR(2),
    ShopPostalCode VARCHAR(9),
    ShopFax CHAR(10),
    ShopContact VARCHAR(100),
    CONSTRAINT POPUP_STORE_PK PRIMARY KEY (ShopID)
);
--新增City，State,PostalCode和fax

CREATE TABLE [ORDER](
    OrderID INT NOT NULL,
    OrderDescription VARCHAR(100),
    OrderStatus VARCHAR(20) CONSTRAINT OrderStatus_CHK CHECK (OrderStatus IN ('Open','Close','Pending')),
    OrderDate DATETIME DEFAULT(getdate()),
    CONSTRAINT ORDER_PK PRIMARY KEY (OrderID)
);

CREATE TABLE PAYMENT(
    InvoiceNumber INT NOT NULL,
    PaymentDate DATETIME DEFAULT(GETDATE()),
    PaymentAmount DECIMAL(10,2),
    PaymentMethod VARCHAR(20) CONSTRAINT PaymentMethod_CHK CHECK (PaymentMethod IN ('Cash', 'Debit Card',
                                                                                 'Credit Card', 'Check')),
    CONSTRAINT PAYMENT_PK PRIMARY KEY (InvoiceNumber)
);

CREATE TABLE PRODUCT(
    ProductID INT NOT NULL,
    ProductName NVARCHAR(50),
    ProductCategories VARCHAR(30) CONSTRAINT ProductCategories_CHK CHECK (ProductCategories IN ('Tops & T-Shirts',
                                                                'Pants & Tights', 'Shorts', 'Hoodies & Pullovers',
                                                                'Jackets & Vests','Other')),
    ProductDescription VARCHAR(50),
    ProductStandardPrice DECIMAL(10,2),
    CONSTRAINT PRODUCT_PK PRIMARY KEY (ProductID)
);
--新增ProductCategories，用于“Table-level CHECK Constraints”

CREATE TABLE SUPPLIER(
    SupplierID INT NOT NULL,
    SupplierName NVARCHAR(50),
    SupplierAddress VARCHAR(30),
	SupplierCity VARCHAR(20),
	SupplierState CHAR(2),
	SupplierPostalCode VARCHAR(9),
    SupplierPhoneNumber CHAR(10),
    SupplierFax CHAR(10),
    CONSTRAINT SUPPLIER_PK PRIMARY KEY (SupplierID)
);
--新增city，state

CREATE TABLE ORDER_LINE(
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    ProductsQuantity SMALLINT,
    SaleUnitPrice DECIMAL(6,2),
    CONSTRAINT ORDER_LINE_PK PRIMARY KEY (OrderID, ProductID),
    CONSTRAINT ORDER_LINE_FK1 FOREIGN KEY (OrderID) REFERENCES [ORDER](OrderID),
    CONSTRAINT ORDER_LINE_FK2 FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

CREATE TABLE SUPPLIER_LINE(
    SupplierID INT NOT NULL,
    ProductID INT NOT NULL,
    QuantityOfProduct SMALLINT,
    SupplyUnitPrice DECIMAL(6,2),
    CONSTRAINT SUPPLIER_LINE_PK PRIMARY KEY (SupplierID,ProductID),
    CONSTRAINT SUPPLIER_LINE_FK1 FOREIGN KEY (SuppLierID) REFERENCES SUPPLIER(SupplierID),
    CONSTRAINT SUPPLIER_LINE_FK2 FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

CREATE TABLE CUSTOMER_VISIT(
    CustomerID INT NOT NULL,
    OrderID INT NOT NULL,
    ShopID INT NOT NULL,
    VisitDate DATETIME DEFAULT(GETDATE()),
    VisitFeedback VARCHAR(1000)
    CONSTRAINT CUSTOMER_VISIT_PK PRIMARY KEY (CustomerID, OrderID, ShopID),
    CONSTRAINT CUSTOMER_VISIT_FK1 FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
    CONSTRAINT CUSTOMER_VISIT_FK2 FOREIGN KEY (OrderID) REFERENCES [ORDER](OrderID),
    CONSTRAINT CUSTOMER_VISIT_FK3 FOREIGN KEY (ShopID) REFERENCES POPUP_STORE(ShopID)
);

