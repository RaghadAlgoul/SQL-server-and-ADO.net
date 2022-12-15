use Database1;

CREATE TABLE Customers(
     CustomersID int primary key identity,
     Name varchar(30), 
	 email varchar(30),
);
--INSERT INTO Customers(Name,email) VALUES ('raghad','raghad@gmail.com'),('raneem','raneem@gmail.com');

CREATE TABLE Orders(
     OrderID int primary key identity,  
	 Customers_ID int ,
	 date_of_order varchar(30),
	 FOREIGN KEY (Customers_ID) REFERENCES Customers
)
CREATE TABLE Products(
     ProductsId int primary key identity,
	 Products_Name varchar(30),
	 no_product int,
	 Order_ID int,
	 FOREIGN KEY (Order_ID) REFERENCES Orders
);
INSERT INTO Customers(Name,email) VALUES ('raghad','raghad@gmail.com'),('raneem','raneem@gmail.com');
INSERT INTO Orders(Customers_ID,date_of_order) VALUES (1,'12-3-2022'),(2,'15-5-2022');
INSERT INTO Products(Products_Name,no_product,Order_ID) VALUES ('shose',4,1),('bag',4,2);


select * FROM Products
select * FROM Orders
select * FROM Customers
inner join Orders ON Orders.Customers_ID=Customers.CustomersID
inner join Products ON Orders.OrderID=Products.ProductsId
WHERE CustomersID=1




DROP TABLE Orders
DROP TABLE Customers
DROP TABLE Products