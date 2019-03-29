CREATE TABLE Item (
	ID INT NOT NULL FOREIGN KEY (ID) REFERENCES Warehouse_Item(ID),
	Manufacturer varchar(255),
	Company varchar(255),
	fk_item_Manufacturer varchar(255) FOREIGN KEY (Manufacturer) REFERENCES Manufacturer(Name),
	fk_item_CompanyName varchar(255) FOREIGN KEY (CompanyName) REFERENCES CompanyName(Name),
	ItemName varchar(255) NOT NULL,
	Price numeric(19,0) NOT NULL,
	Description varchar(255)
)
/

CREATE TABLE CompanyName (
	Name varchar(255) NOT NULL PRIMARY KEY,
	Adress varchar(255) NOT NULL,
	Phone varchar(255) NOT NULL,
	URL varchar(255)
)
/

CREATE TABLE Manufacturer (
	Name varchar(255) NOT NULL PRIMARY KEY
	Adress varchar(255) NOT NULL
)
/

CREATE TABLE RecommendedItem (
	ID INT NOT NULL PRIMARY KEY,
	IDrecommended INT NOT NULL
)
/

CREATE TABLE Warehouse_Item (
	ID INT NOT NULL PRIMARY KEY,
	WarehouseCode INT NOT NULL FOREIGN KEY (WarehouseCode) REFERENCES Warehouse(WarehouseCode),
	Counter INT NOT NULL
)
/

CREATE TABLE Warehouse (
	WarehouseCode INT NOT NULL PRIMARY KEY,
	Phone varchar(255) NOT NULL,
	Address varchar(255) NOT NULL
)
/

CREATE TABLE ShoppingBasket (
	ShoppingBasketID INT NOT NULL PRIMARY KEY,
	CustomerEmail varchar(255) NOT NULL FOREIGN KEY (CustomerEmail) REFERENCES Customer(Email)
)
/

CREATE TABLE ShoppingBasket_Item (
	ShoppingBasketID INT NOT NULL FOREIGN KEY (ShoppingBasketID) REFERENCES ShoppingBasket(ShoppingBasketID),
	ID INT NOT NULL FOREIGN KEY (ID) REFERENCES Warehouse_Item(ID),
	Counter INT NOT NULL
)

CREATE TABLE Customer (
	Email varchar(255) NOT NULL PRIMARY KEY,
	Name varchar(255) NOT NULL,
	Phone varchar(255),
	Address varchar(255)
)
/


SET serveroutput ON
DECLARE
  TYPE varr IS VARRAY(1000) OF varchar2(255);
  lista_produse varr := varr('Couch','Dishes','Silverware','Pots','Television','Laptop','Table','Chairs','Bed','Pillow','Lamp','Paper','Flashlight');
  lista_companii varr:= varr('The Alpine Group, Inc.','Amazon.com, Inc.','AMC Entertainment Inc.','American Power Conversion Corporation','Amerada Hess Corporation','AMERCO','Ameren Corporation','America West Holdings Corporation','General Dynamics Corporation','General Electric Company','General Mills Inc','General Motors Corporation','Genesis Health Ventures Inc.');
  lista_producatori varr := varr('The Alpine Group, Inc.','Amazon.com, Inc.','AMC Entertainment Inc.','American Power Conversion Corporation','Amerada Hess Corporation','AMERCO','Ameren Corporation','America West Holdings Corporation','General Dynamics Corporation','General Electric Company','General Mills Inc','General Motors Corporation','Genesis Health Ventures Inc.');