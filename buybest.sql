CREATE TABLE BuyBest(
	storeID int,
	addr varchar(255),
	zip varchar(10),
	state varchar(50),
	PRIMARY KEY (storeID)
);

CREATE TABLE Customer(
	custID int,
	custFN varchar(255),
	custLN varchar (255),
	PRIMARY KEY(custID)
);

CREATE TABLE Employee(
	empID int,
	empFN varchar(255),
	empLN varchar(255),
	bday date,
	PRIMARY KEY(empID),
	FOREIGN KEY(storeID) REFERENCES BuyBest(storeID)
);

CREATE TABLE Vendor(
	vendID int,
	vendPhone varchar(15),
	vendName varchar(255),
	PRIMARY KEY(vendID)
);

CREATE TABLE Product(
	itemID int,
	itemPrice decimal,
	itemName varchar(255),
	quantity int,
	PRIMARY KEY(itemID),
	FOREIGN KEY(vendID) REFERENCES Vendor(vendID)
);

CREATE TABLE Sales(
	salesID int,
	PRIMARY KEY(salesID),
	FOREIGN KEY(itemID) REFERENCES Product(itemID),
	FOREIGN KEY(custID) REFERENCES Customer(custID),
	FOREIGN KEY(empID) REFERENCES Employee(empID)
);

	
