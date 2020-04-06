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
    Contact VARCHAR(50),
    CONSTRAINT Customer_PK PRIMARY KEY (CustomerID)
);
--新增City，State和PostalCode
--新增CostomerLevel, 用于“Table-level CHECK Constraints”

CREATE TABLE PRODUCT(
    ProductID INT NOT NULL,
    ProductCategories VARCHAR(30) CONSTRAINT ProductCategories_CHK CHECK (ProductCategories IN ('Tops & T-Shirts',
                                                                'Pants & Tights', 'Shorts', 'Hoodies & Pullovers',
                                                                'Jackets & Vests','Other')),
    ProductDescription VARCHAR(50),
    ProductStandardPrice DECIMAL(6,2),
    CONSTRAINT Product_PK PRIMARY KEY (ProductID)
);
--新增ProductCategories，用于“Table-level CHECK Constraints”

CREATE TABLE SHOP(
    ShopID INT NOT NULL,
    ShopAddress VARCHAR(30),
    ShopCity VARCHAR(20),
    ShopState CHAR(2),
    ShopPostalCode VARCHAR(9),
    CONSTRAINT Shop_PK PRIMARY KEY (ShopID)
)
--新增City，State和PostalCode

CREATE TABLE ORDER(
    OrderID INT NOT NULL,
    OrderDate DATETIME DEFAULT(getdate()),
    CONSTRAINT Order_PK PRIMARY KEY (OrderID),
    CONSTRAINT Order_FK FOREIGN KEY (ShopID) REFERENCES SHOP(ShopID)
);
--新增外键Order_FK

CREATE TABLE ORDERLINE(
    OrderQuantity SMALLINT
)

