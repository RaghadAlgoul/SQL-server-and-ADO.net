use Database1;

CREATE TABLE Customers(
     ID int,
     Name varchar(30), 
	 Date_of_Order date,
);

CREATE TABLE Orders(
     IDOfCustomer int,
	 Date_of_Order date,
);
CREATE TABLE Products(
     IdOfProduct int,
	 Date_of_Order date,
);
CREATE TABLE Employees(
     ID int,
     Name varchar(30), 
	 Date_of_Order date,
);
