With CustomerTotalOrders(customerID, CustomerName, totalOrder, totalPrice) 
AS
(
	SELECT 
	O.CustomerID,
	C.CustomerName,
	COUNT(DISTINCT O.OrderID) NumOfOrders,
	SUM(OL.UnitPrice) as Total_Cost
	FROM 
	[Sales].[Orders] O
	INNER JOIN Sales.Customers C ON C.CustomerID = O.CustomerID
	INNER JOIN Sales.OrderLines OL ON OL.OrderID = O.OrderID
	WHERE
	O.OrderDate = '1/2/13'
	AND C.CustomerName LIKE '%wing%'
	GROUP BY
	O.CustomerID, C.CustomerName
	)

select * from CustomerTotalOrders

--IF OBJECT_ID('IndexingAndLockingTable') IS NOT NULL
--BEGIN
--  DROP TABLE IndexingAndLockingTable
--END
--GO
--CREATE TABLE IndexingAndLockingTable(CustomerID   Int Identity(1,1) PRIMARY KEY, 
--                       CustomerName VarChar(250) NOT NULL DEFAULT NewID(),
--                       totalOrder decimal NOT NULL DEFAULT NewID(),
--                       totalPrice int  NOT NULL DEFAULT GetDate())
--GO
--GO 
--SET NOCOUNT ON 
--GO
--INSERT INTO IndexingAndLockingTable DEFAULT VALUES 
--GO 10

--CREATE NONCLUSTERED INDEX index_Test ON CustomerTotalOrders(FirstName, LastName, totalOrder, totalPrice)
--GO

----INDEX SCAN 
--SET STATISTICS IO ON
--SELECT *
--  FROM IndexingAndLockingTable
--WHERE FirstName like 'B%'
--SET STATISTICS IO OFF