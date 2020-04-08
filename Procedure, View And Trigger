GO
CREATE PROCEDURE GetOrderDetail 
@CustomerName NVARCHAR(25)
AS BEGIN
SELECT [ORDER].OrderID,OrderDescription
FROM CUSTOMER_VISIT,CUSTOMER,[ORDER]
WHERE CustomerName = @CustomerName 
AND CUSTOMER_VISIT.CustomerID = CUSTOMER.CustomerID 
AND CUSTOMER_VISIT.OrderID = [ORDER].OrderID
END

EXEC GetOrderDetail @CustomerName = 'Kanye West';

GO
CREATE PROCEDURE UpdateEmployeeWorks
@EmployeeID INT,
@NewDepartmentID INT,
@Message VARCHAR(30) OUTPUT
AS BEGIN
IF Not exists(SELECT * FROM EMPLOYEE WHERE EmployeeID = @EmployeeID)
BEGIN
    SET @Message = 'Have no such employee!'
END
ELSE
BEGIN
    IF (@NewDepartmentID like '3%')
    BEGIN
        UPDATE [EMPLOYEE]
        SET 
        CenterID = null,
        WarehouseID = null,
        ShopID = @NewDepartmentID
        WHERE EmployeeID = @EmployeeID
        SET @Message = 'Update Successfully'
        END
    IF (@NewDepartmentID like '2%')
    BEGIN
        UPDATE [EMPLOYEE]
        SET 
        CenterID = null,
        WarehouseID = @NewDepartmentID,
        ShopID = null
        WHERE EmployeeID = @EmployeeID
        SET @Message = 'Update Successfully'
        END
    IF (@NewDepartmentID like '1%')
    BEGIN
        UPDATE [EMPLOYEE]
        SET 
        CenterID = @NewDepartmentID,
        WarehouseID = null,
        ShopID = null
        WHERE EmployeeID = @EmployeeID
        SET @Message = 'Update Successfully'
    END
END
END

DECLARE @result2 VARCHAR(30);
EXEC UpdateEmployeeWorks @EmployeeID =0003, @NewDepartmentID = 103, @Message=@result2 Output;
PRINT @result2;

GO
CREATE PROCEDURE GetTotalProfit
@ProductID INT,
@SupplierID INT,
@Profit FLOAT OUTPUT
AS BEGIN
DECLARE @SupplyPrice FLOAT
DECLARE @SalePrice FLOAT
Declare @TotalNumber INT
SELECT @SalePrice = ProductStandardPrice
FROM PRODUCT
WHERE ProductID = @ProductID
IF NOT EXISTS (SELECT * FROM SUPPLIER_LINE WHERE SupplierID = @SupplierID AND SUPPLIER_LINE.ProductID = @ProductID)
BEGIN
     PRINT('The information error, please check!')
END
ELSE
BEGIN
SELECT @SupplyPrice = SUPPLIER_LINE.SupplyUnitPrice, @TotalNumber = SUPPLIER_LINE.QuantityOfProduct
FROM SUPPLIER_LINE
WHERE SUPPLIER_LINE.ProductID = @ProductID AND SupplierID = @SupplierID
END
SET @Profit = @TotalNumber * (@SalePrice - @SupplyPrice)
END

DECLARE @Money FLOAT
EXEC GetTotalProfit @ProductID=63467, @SupplierID =1000, @Profit =@Money output;
SELECT @Money AS Profit

GO
CREATE PROCEDURE GetNumberWithinCatrgory
@Category VARCHAR(30),
@Number INT OUTPUT
AS BEGIN
SELECT @Number = COUNT(*)
FROM PRODUCT
WHERE PRODUCT.ProductCategories = @Category
END

DECLARE @num INT
EXEC GetNumberWithinCatrgory @Category = 'Hoodies & Pullovers',@Number=@num output;
select @num AS 'Number ';

GO
CREATE VIEW vw_GoldCustomer AS
SELECT CustomerID,CustomerName,CustomerAddress,CustomerCity,CustomerState,CustomerPostalCode,CustomerPhoneNumber
FROM CUSTOMER
WHERE CustomerLevel ='Gold'
WITH CHECK OPTION;
GO

SELECT * FROM vw_GoldCustomer;

GO
CREATE VIEW vw_PendingOrder AS
SELECT OrderID, OrderDescription,OrderDate
FROM [ORDER]
WHERE OrderStatus='Pending'
WITH CHECK OPTION;
GO

SELECT * FROM vw_PendingOrder

GO
CREATE VIEW vw_ShoesProducts AS
SELECT ProductID, ProductName,ProductDescription,ProductStandardPrice,WareHouseID
FROM PRODUCT
WHERE ProductCategories='Shoes'
WITH CHECK OPTION;
GO

SELECT * FROM vw_ShoesProducts

GO
CREATE TRIGGER ConfictName
ON POPUP_STORE
AFTER INSERT
AS BEGIN
DECLARE @name NVARCHAR(50)
SELECT @name=ShopName
FROM inserted
IF exists (SELECT * FROM POPUP_STORE where ShopName = @name)
BEGIN
    RAISERROR('The name already exists. Please check!',1,1)
    DELETE From POPUP_STORE WHERE ShopID = (Select ShopId from inserted)
END
END

INSERT INTO POPUP_STORE (ShopID, ShopName, ShopAddress,ShopCity,ShopState,ShopPostalCode,ShopFax,ShopContact) VALUES
('322','K','1630 Tremont St','Beston','Mz','02123','3782719222','Kylie Janser');
SELECT * FROM POPUP_STORE

GO
CREATE TRIGGER ConfictNameInCenter
ON CUSTOMER_SERVICE
AFTER INSERT
AS BEGIN
DECLARE @name NVARCHAR(50)
SELECT @name=CenterName
FROM inserted
IF exists (SELECT * FROM CUSTOMER_SERVICE where CenterName = @name)
BEGIN
    RAISERROR('The name already exists. Please check',1,1)
    DELETE From CUSTOMER_SERVICE WHERE CenterID = (Select CenterId from inserted)
END
END

INSERT INTO CUSTOMER_SERVICE (CenterID, CenterName, CenterAddress,CenterCity,CenterState,CenterPostalCode) VALUES
('122','Bloomingdale','5td Ave','NewYdrk City','dY','10d56');
SELECT * FROM CUSTOMER_SERVICE;

GO
CREATE TRIGGER ConfictNameInWarehouse
ON INTERSTATE_WAREHOUSE
AFTER INSERT
AS BEGIN
DECLARE @name NVARCHAR(50)
SELECT @name=WarehouseName
FROM inserted
IF exists (SELECT * FROM INTERSTATE_WAREHOUSE where WarehouseName = @name)
BEGIN
    RAISERROR('The Warehouse name already exists. Please check',1,1)
    DELETE From INTERSTATE_WAREHOUSE WHERE WarehouseID = (Select WarehouseId from inserted)
END
END

INSERT INTO INTERSTATE_WAREHOUSE (WarehouseID, WarehouseName, WarehouseAddress,WarehouseCity,WarehouseState,WarehousePostalCode,WarehouseCapacity,WarehousePhoneNumber) VALUES
('221','Boston Public Storage','73 Park Drive','Bdston','aA','02315','5030','1028352740');
Select * FROM INTERSTATE_WAREHOUSE