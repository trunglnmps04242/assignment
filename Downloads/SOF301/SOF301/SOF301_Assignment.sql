Create database AssignmentSOF301

use AssignmentSOF301
create table Customers(
Username varchar(50) NOT NULL PRIMARY KEY,
Password varchar (30) NOT NULL,
Name varchar (50) NOT NULL,
Gender varchar NULL,
Email varchar (30) NOT NULL,
Role varchar (20) NOT NULL
)

INSERT INTO Customers ( Username, Password , Name, Gender, Email, Role ) VALUES('chenjai', '123', 'Chen Jai', 'F' , 'chenjai1984@gmail.com', 'user')
INSERT INTO Customers ( Username, Password , Name, Gender, Email, Role ) VALUES('admin', 'admin', 'Admin', 'M' , 'chenjai1984@gmail.com', 'admin')

create table Products(
Code varchar(30) NOT NULL PRIMARY KEY,
Name varchar (50) NOT NULL,
Price float NULL
)

INSERT INTO Products ( Code, Name, Price) VALUES('PS001', 'iPhone  Plus', 1000)
INSERT INTO Products ( Code, Name, Price) VALUES('PS002', 'iPhone 7 ', 999)
INSERT INTO Products ( Code, Name, Price) VALUES('PS003', 'iPhone 6s Plus', 899)
INSERT INTO Products ( Code, Name, Price) VALUES('PS004', 'iPhone 6s ', 799)
INSERT INTO Products ( Code, Name, Price) VALUES('PS005', 'iPhone 6 Plus', 799)
INSERT INTO Products ( Code, Name, Price) VALUES('PS006', 'iPhone 6', 699)
INSERT INTO Products ( Code, Name, Price) VALUES('PS007', 'iPhone 5s', 499)
INSERT INTO Products ( Code, Name, Price) VALUES('PS008', 'iPhone 5', 399)
INSERT INTO Products ( Code, Name, Price) VALUES('PS009', 'iPhone 5SE', 599)