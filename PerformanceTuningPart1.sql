With Orders_Detail(OrderLineID, Description, totalQuantity, unitPrice, CustomerID ) 
AS
(
	SELECT 
	OrderLineID, Description, sum(Quantity) totalQuantity, round(avg(UnitPrice),3) unitPrice, 
	count(O.CustomerID) CustomerID
	FROM Sales.OrderLines 
	JOIN Sales.Orders O ON OrderLines.OrderID = O.OrderID
	WHERE
	PackageTypeID = 7
	GROUP BY orderLineID, description
)

select * from Orders_Detail