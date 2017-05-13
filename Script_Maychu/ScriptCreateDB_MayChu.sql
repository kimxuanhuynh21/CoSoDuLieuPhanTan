CREATE DATABASE ThoiTrang_CSDL
GO
USE ThoiTrang_CSDL
GO

---******************** MODULE LOCATION MANAGEMENT *********************************---

------------ SHOP ---------------
--drop table shop

CREATE TABLE shop (
	id int NOT NULL IDENTITY(1, 1),
	shopId AS 'shop' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	addressShop nvarchar(200),
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)

------------ STORAGE ---------------
--drop table storage

--CREATE TABLE storage (
--	id int NOT NULL IDENTITY(1, 1),
--	shopId nvarchar(7) NOT NULL,
--	productId nvarchar(10) NOT NULL,
--	quantity int,
--	creator nvarchar(11),
--	voided tinyint DEFAULT 0, 
--	voidedBy nvarchar(11), 
--	voidedReason nvarchar(255),   
--	dateCreated datetime DEFAULT GETDATE(), 
--	dateChanged datetime, 
--	note nvarchar(255),
--)

---******************** MODULE STAFF MANAGEMENT *********************************---
------------ ROLE ---------------
--drop table role

CREATE TABLE role (
	id int NOT NULL IDENTITY(1, 1),
	roleId AS 'role' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	name nvarchar(200),
	creator nvarchar(11),
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)


------------ SALARY ---------------
--drop table salary

CREATE TABLE salary (
	id int NOT NULL IDENTITY(1, 1),
	salaryId AS 'salary' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	roleId nvarchar(7),
	minWorkYear int,
	amount float,
	note nvarchar(255)
)

------------ EMPLOYEE ---------------
--drop table employee

CREATE TABLE employee (
	id int NOT NULL IDENTITY(1, 1),
	employeeId AS 'employee' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	shopId nvarchar(7),
	roleId nvarchar(7),
	username varchar(100),
	pass varchar(100),
	--name nvarchar(200),
	--addressEmployee nvarchar(200),
	--avatar varchar(200),
	--phone varchar(100),
	salaryId nvarchar(9),
	--email varchar(100),
	managerId nvarchar(11),
	dateStarted datetime,
	dateEnded datetime,
	creator nvarchar(11),
	retired tinyint DEFAULT 0, 
	retiredBy nvarchar(11), 
	retiredReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)

---******************** MODULE CUSTOMER MANAGEMENT *********************************---

------------ VIP ---------------
--drop table VIP

CREATE TABLE VIP (
	id int NOT NULL IDENTITY(1, 1),
	vipId AS 'vip' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	name nvarchar(200),
	creator nvarchar(11), 
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)


------------ CUSTOMER ---------------
--drop table customer

CREATE TABLE customer (
	id int NOT NULL IDENTITY(1, 1),
	customerId AS 'customer' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	shopId nvarchar(7),
	vipId nvarchar(6),
	name nvarchar(200),
	addressCustomer nvarchar(200),
	phone varchar(100),
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)


------------ PROMOTION ---------------
--drop table promotion

CREATE TABLE promotion (
	id int NOT NULL IDENTITY(1, 1),
	promotionId AS 'promotion' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	vipId nvarchar(6),
	discount float,
	creator nvarchar(11), 
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)



---******************** MODULE SALE MANAGEMENT *********************************---
------------ SALE ---------------
--drop table sale

CREATE TABLE sale (
	id int NOT NULL IDENTITY(1, 1),
	saleId AS 'sale' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	name nvarchar(200),
	descriptionSale nvarchar(200),
	discount int,
	fromTime datetime,
	toTime datetime,
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)

------------ CATEGORY ---------------

--drop table category

CREATE TABLE category (
	id int NOT NULL IDENTITY(1, 1),
	categoryId AS 'category' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	parentCategoryId nvarchar(11),
	name nvarchar(200),
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255), 
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)

------------ PRODUCT ---------------
--drop table product

CREATE TABLE product (
	id int NOT NULL IDENTITY(1, 1),
	productId AS 'product' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	categoryId nvarchar(11),
	saleId nvarchar(7),
	name nvarchar(200),
	color nvarchar(100),
	size nvarchar(100),
	unit nvarchar(100),
	descriptionProduct nvarchar(255),
	quantity int,
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11),  
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)

------------ PRODUCTIMAGE ---------------
--drop table productImage

CREATE TABLE productImage (
	id int NOT NULL IDENTITY(1, 1),
	imageId AS 'image' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	productId nvarchar(10),
	link nvarchar(200),
	title nvarchar(200) NOT NULL,
	alt nvarchar(100),
	creator nvarchar(11),
	voided tinyint DEFAULT 0,  
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)


------------ PRODUCTPRICE ---------------
--drop table productPrice

CREATE TABLE productPrice (
	id int NOT NULL IDENTITY(1, 1),
	productId nvarchar(10) NOT NULL,
	numberPrice int NOT NULL,
	price float,
	creator nvarchar(11), 
	dateCreated datetime DEFAULT GETDATE(), 
	note nvarchar(255),
)

------------ ORDER ---------------
--drop table orderCus

--CREATE TABLE orderCus (
--	id int NOT NULL IDENTITY(1, 1),
--	orderId AS 'order' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
--	customerId nvarchar(11),
--	creator nvarchar(11),
--	voided tinyint DEFAULT 0, 
--	voidedBy nvarchar(11), 
--	voidedReason nvarchar(255),   
--	dateCreated datetime DEFAULT GETDATE(), 
--	dateChanged datetime, 
--	note nvarchar(255)
--)


------------ ORDERDETAIL ---------------
--drop table orderDetail

--CREATE TABLE orderDetail (
--	orderId nvarchar(8) NOT NULL,
--	productId nvarchar(10) NOT NULL,
--	numberPrice int,
--	quantity int,
--	discount float,
--	creator nvarchar(11),
--	voided tinyint DEFAULT 0, 
--	voidedBy nvarchar(11), 
--	voidedReason nvarchar(255),   
--	dateCreated datetime DEFAULT GETDATE(), 
--	dateChanged datetime, 
--	note nvarchar(255),
--)


---******************** MODULE IMPORT PRODUCT MANAGEMENT *********************************---

------------ SUPPLIER  ---------------
--drop table supplier

CREATE TABLE supplier (
	id int NOT NULL IDENTITY(1, 1),
	supplierId AS 'supplier' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	name nvarchar(200),
	addressSupplier nvarchar(200),
	phone varchar(100),
	email varchar(100),
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)

------------ IMPORT PRODUCT PRICE ---------------
--drop table importProductPrice

CREATE TABLE importProductPrice (
	id int NOT NULL IDENTITY(1, 1),
	productId nvarchar(10) NOT NULL,
	importNumberPrice int NOT NULL,
	importPrice float,
	creator nvarchar(11), 
	dateCreated datetime DEFAULT GETDATE(), 
	note nvarchar(255),
)

------------ IMPORT VOUCHER  ---------------
--drop table importVoucher

CREATE TABLE importVoucher (
	id int NOT NULL IDENTITY(1, 1),
	importId AS 'import' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	supplierId nvarchar(11),
	creator nvarchar(11),
	paid tinyint,
	paidBy nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)

------------ IMPORT VOUCHER DETAIL ---------------
--drop table importVoucherDetail

CREATE TABLE importVoucherDetail (
	importId nvarchar(9) NOT NULL,
	productId nvarchar(10) NOT NULL,
	importNumberPrice int,
	quantity int,
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255),
)

--ALTER TABLE storage ADD CONSTRAINT FK_storagesale FOREIGN KEY (shopId) REFERENCES shop(shopId);
--ALTER TABLE storage ADD CONSTRAINT FK_storageproduct FOREIGN KEY (productId) REFERENCES product(productId);
ALTER TABLE salary ADD CONSTRAINT FK_salaryrole FOREIGN KEY (roleId) REFERENCES role(roleId);
ALTER TABLE employee ADD CONSTRAINT FK_employeeshop FOREIGN KEY (shopId) REFERENCES shop(shopId);
ALTER TABLE employee ADD CONSTRAINT FK_employeerole FOREIGN KEY (roleId) REFERENCES role(roleId);
ALTER TABLE employee ADD CONSTRAINT FK_employeesalary FOREIGN KEY (salaryId) REFERENCES salary(salaryId);
ALTER TABLE customer ADD CONSTRAINT FK_customershop FOREIGN KEY (shopId) REFERENCES shop(shopId);
ALTER TABLE customer ADD CONSTRAINT FK_customersvip FOREIGN KEY (vipId) REFERENCES VIP(vipId);
ALTER TABLE promotion ADD CONSTRAINT FK_promotionvip FOREIGN KEY (vipId) REFERENCES VIP(vipId);
ALTER TABLE product ADD CONSTRAINT FK_productcategory FOREIGN KEY (categoryId) REFERENCES category(categoryId);
ALTER TABLE product ADD CONSTRAINT FK_productsale FOREIGN KEY (saleId) REFERENCES sale(saleId);
ALTER TABLE productImage ADD CONSTRAINT FK_productImageproduct FOREIGN KEY (productId) REFERENCES product(productId);
ALTER TABLE productPrice ADD CONSTRAINT FK_productPriceproduct FOREIGN KEY (productId) REFERENCES product(productId);
--ALTER TABLE orderCus ADD CONSTRAINT FK_orderCuscustomer FOREIGN KEY (customerId) REFERENCES customer(customerId);
--ALTER TABLE orderDetail ADD CONSTRAINT FK_orderDetailorderCus FOREIGN KEY (orderId) REFERENCES orderCus(orderId);
--ALTER TABLE orderDetail ADD CONSTRAINT FK_orderDetailproduct FOREIGN KEY (productId) REFERENCES product(productId);
ALTER TABLE importProductPrice ADD CONSTRAINT FK_importProductPriceproduct FOREIGN KEY (productId) REFERENCES product(productId);
ALTER TABLE importVoucher ADD CONSTRAINT FK_importVouchersupplierId FOREIGN KEY (supplierId) REFERENCES supplier(supplierId);
ALTER TABLE importVoucherDetail ADD CONSTRAINT FK_importVoucherDetailimportVoucher FOREIGN KEY (importId) REFERENCES importVoucher(importId);
ALTER TABLE importVoucherDetail ADD CONSTRAINT FK_importVoucherDetailproduct FOREIGN KEY (productId) REFERENCES product(productId);

--ALTER TABLE storage ADD constraint PK_storage PRIMARY KEY (shopId, productId);
ALTER TABLE productPrice ADD CONSTRAINT PK_productPrice PRIMARY KEY  (productId, numberPrice)
--ALTER TABLE orderDetail ADD CONSTRAINT PK_orderDetail PRIMARY KEY  (orderId, productId);
ALTER TABLE importProductPrice ADD CONSTRAINT PK_importProductPrice PRIMARY KEY  (productId, importNumberPrice);
ALTER TABLE importVoucherDetail ADD CONSTRAINT PK_importVoucherDetail PRIMARY KEY  (importId, productId);
