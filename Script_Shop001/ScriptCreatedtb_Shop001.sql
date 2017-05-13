CREATE DATABASE ThoiTrang_CSDL
GO
USE ThoiTrang_CSDL
GO

---******************** MODULE LOCATION MANAGEMENT *********************************---

------------ STORAGE ---------------
--drop table storage

CREATE TABLE storage (
	id int NOT NULL IDENTITY(1, 1),
	shopId nvarchar(7) NOT NULL,
	productId nvarchar(10) NOT NULL,
	quantity int,
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255),
)


------------ ORDER ---------------
--drop table orderCus

CREATE TABLE orderCus (
	id int NOT NULL IDENTITY(1, 1),
	orderId AS 'order' + '1' + RIGHT('000' + CAST(ID AS NVARCHAR(3)), 3) PERSISTED PRIMARY KEY,
	customerId nvarchar(11),
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255)
)


------------ ORDERDETAIL ---------------
--drop table orderDetail

CREATE TABLE orderDetail (
	orderId nvarchar(8) NOT NULL,
	productId nvarchar(10) NOT NULL,
	numberPrice int,
	quantity int,
	discount float,
	creator nvarchar(11),
	voided tinyint DEFAULT 0, 
	voidedBy nvarchar(11), 
	voidedReason nvarchar(255),   
	dateCreated datetime DEFAULT GETDATE(), 
	dateChanged datetime, 
	note nvarchar(255),
)


ALTER TABLE storage ADD CONSTRAINT FK_storagesale FOREIGN KEY (shopId) REFERENCES shop(shopId);
ALTER TABLE storage ADD CONSTRAINT FK_storageproduct FOREIGN KEY (productId) REFERENCES product(productId);
ALTER TABLE orderCus ADD CONSTRAINT FK_orderCuscustomer FOREIGN KEY (customerId) REFERENCES customer(customerId);
ALTER TABLE orderDetail ADD CONSTRAINT FK_orderDetailorderCus FOREIGN KEY (orderId) REFERENCES orderCus(orderId);
ALTER TABLE orderDetail ADD CONSTRAINT FK_orderDetailproduct FOREIGN KEY (productId) REFERENCES product(productId);

ALTER TABLE storage ADD constraint PK_storage PRIMARY KEY (shopId, productId);
ALTER TABLE orderDetail ADD CONSTRAINT PK_orderDetail PRIMARY KEY  (orderId, productId);
