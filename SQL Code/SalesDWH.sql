create database SalesDWH

use SalesDWH

create table Dimproduct
(
productnum int primary key identity(1,1),
productid nvarchar(500),
productname nvarchar(500),
productsupcat nvarchar(500),
productcat nvarchar(500),
)
go
create table Dimcustomer
(
customername nvarchar(500),
customernum int primary key identity(1,1),
customerid nvarchar(500),
customersegmant nvarchar(500)
)
go
create table Dimlocation
(
locatoinid int primary key identity(1,1),
Region nvarchar(255),
postalcode float,
state nvarchar(255),
Location nvarchar(255),
responsibleperson nvarchar(255)
)
go
create table Dimshipmode
(
Shipmodeid int primary key identity(1,1),
shipmode nvarchar(255)
)
go
create table DimDate
(
Datekey int primary key,
Fulldate Date,
Year int,
monthnum int,
day int,
monthname nvarchar(255),
quarter int,
dayofweak int,
dayname nvarchar(255),
isweakend nvarchar(3),
)
create table factsales
(
rowid int primary key ,
orderid nvarchar(255),
productnum int,
customernum int,
locatoinid int,
Shipmodeid int,
Datekey int,

ordersales Float,
quantity int,
DiscountRate float,
profit float,
cost float,
discontvalue float,
returns bit,
shippingcost float,

foreign key (productnum) references Dimproduct(productnum),
foreign key (customernum) references Dimcustomer(customernum),
foreign key (locatoinid) references Dimlocation(locatoinid),
foreign key (Shipmodeid) references Dimshipmode(Shipmodeid),
foreign key (Datekey) references DimDate(Datekey )

)

-------------------------------------------------------------------------
select * from Dimproduct
-------------------------------------------------------------------------
select * from Dimcustomer
--------------------------------------------------------------------------
select * from DimDate
------------------------------------------------------------------------------
select * from Dimlocation
------------------------------------------------------------------------------
select * from Dimshipmode
---------------------------------------------------------------------------
select * from factsales
------------------------------------------------------------------------------