USE ThoiTrang_CSDL
GO
----------------------- INSERT ----------------------------
------ SHOP-----

INSERT INTO shop(addressShop, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES(N'402 An Dương Vương,P.4, Q.5, TP HCM',3,0,NULL,N'','2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO shop(addressShop, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES(N'200 Nguyễn Bặc, P.4, Q. Tân Bình, TP HCM',3,0,NULL,N'','2016-12-12 21:36:44','2016-12-12 21:36:44',N'');


----- ROLE ------

INSERT INTO role(name, creator, dateCreated,dateChanged,note)VALUES(N'Bán hàng',4,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO role(name, creator, dateCreated,dateChanged,note)VALUES(N'Quản lý bán hàng',4,'2016-12-12 21:36:45','2016-12-12 21:36:45',N'');
INSERT INTO role(name, creator, dateCreated,dateChanged,note)VALUES(N'Kho',4,'2016-12-12 21:36:46','2016-12-12 21:36:46',N'');
INSERT INTO role(name, creator, dateCreated,dateChanged,note)VALUES(N'Quản lý kho',4,'2016-12-12 21:36:47','2016-12-12 21:36:47',N'');
INSERT INTO role(name, creator, dateCreated,dateChanged,note)VALUES(N'Kế toán',4,'2016-12-12 21:36:48','2016-12-12 21:36:48',N'');
INSERT INTO role(name, creator, dateCreated,dateChanged,note)VALUES(N'Quản lý kế toán',4,'2016-12-12 21:36:49','2016-12-12 21:36:49',N'');
INSERT INTO role(name, creator, dateCreated,dateChanged,note)VALUES(N'Quản trị',4,'2016-12-12 21:36:50','2016-12-12 21:36:50',N'');

------ SALARY --------

INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role001',0,4000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role001',2,4500000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role001',5,5000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role001',10,7000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role001',15,9000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role002',0,4500000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role002',2,5000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role002',5,6000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role002',10,8000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role002',15,10000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role003',0,4500000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role003',2,5000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role003',5,7000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role003',10,9000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role003',15,10000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role004',0,5000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role004',2,6000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role004',5,8000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role004',10,10000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role004',15,12000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role005',0,5000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role005',2,6000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role005',5,8000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role005',10,10000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role005',15,12000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role006',0,5500000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role006',2,7000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role006',5,9000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role006',10,11000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role006',15,13000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role007',0,7000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role007',2,8000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role007',5,10000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role007',10,12000000,N'');
INSERT INTO salary(roleId, minWorkYear, amount,note)VALUES('role007',15,14000000,N'');


------ EMPOLYEE ------

INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role001','quynh.nhu1','quynh.nhu1','salary002','employee002','2013-01-12 21:36:44.000','','employee004',0,'NULL',N'','2012-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role001','quynh.nhu2','quynh.nhu2','salary001','employee002','2017-01-12 21:36:45.000','2017-04-04 21:00:00','employee004',1,'employee003',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role001','quynh.nhu3','quynh.nhu3','salary001','employee002','2017-01-12 21:36:46.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role002','quynh.nhu4','quynh.nhu4','salary006','employee002','2017-01-12 21:36:47.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role002','quynh.nhu5','quynh.nhu5','salary006','employee002','2017-01-12 21:36:48.000','2017-04-04 21:00:00','employee004',1,'employee003',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role003','quynh.nhu6','quynh.nhu6','salary012','employee004','2014-01-01 21:36:49.000','','employee004',0,'NULL',N'','2013-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role003','quynh.nhu7','quynh.nhu7','salary011','employee004','2017-01-12 21:36:50.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role004','quynh.nhu8','quynh.nhu8','salary016','employee004','2017-01-12 21:36:51.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role004','quynh.nhu9','quynh.nhu9','salary016','employee004','2017-01-12 21:36:52.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role005','kim.xuan1','kim.xuan1','salary021','employee006','2017-01-12 21:36:53.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role005','kim.xuan2','kim.xuan2','salary021','employee006','2017-01-12 21:36:54.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role006','kim.xuan3','kim.xuan3','salary026','employee006','2017-01-12 21:36:55.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role006','kim.xuan4','kim.xuan4','salary026','employee006','2017-01-12 21:36:56.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop001','role007','kim.xuan5','kim.xuan5','salary033','employee007','2010-01-12 21:36:57.000','1899-12-30 00:00:00','employee004',0,'NULL',N'','2010-12-13 21:36:44.000','2010-12-13 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role001','kim.xuan6','kim.xuan6','salary003','employee002','2011-02-16 21:36:56.000','','employee004',0,'NULL',N'','2010-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role001','kim.xuan7','kim.xuan7','salary001','employee002','2017-02-16 21:36:57.000','','employee004',0,'NULL',N'','2016-12-12 21:36:45.000','2016-12-12 21:36:45.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role001','kim.xuan8','kim.xuan8','salary001','employee002','2017-02-16 21:36:58.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role002','kim.xuan9','kim.xuan9','salary006','employee002','2017-02-16 21:36:59.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role002','kim.xuan10','kim.xuan10','salary008','employee002','2012-02-16 21:37:00.000','2017-04-04 21:00:00','employee004',1,'employee003',N'','2011-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role003','van.nhieu1','van.nhieu1','salary011','employee004','2017-02-16 21:37:01.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role003','van.nhieu2','van.nhieu2','salary011','employee004','2017-02-16 21:37:02.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role004','van.nhieu3','van.nhieu3','salary016','employee004','2017-02-16 21:37:03.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role004','van.nhieu4','van.nhieu4','salary016','employee004','2017-02-16 21:37:04.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role005','van.nhieu5','van.nhieu5','salary021','employee006','2017-02-16 21:37:05.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role005','van.nhieu6','van.nhieu6','salary021','employee006','2017-02-16 21:37:06.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role006','van.nhieu7','van.nhieu7','salary026','employee006','2017-02-16 21:37:07.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role006','van.nhieu8','van.nhieu8','salary026','employee006','2017-02-16 21:37:08.000','','employee004',0,'NULL',N'','2016-12-12 21:36:44.000','2016-12-12 21:36:44.000',N'');
INSERT INTO employee(shopId, roleId, username, pass,  salaryId, managerId, dateStarted, dateEnded, creator, retired, retiredBy, retiredReason, dateCreated,dateChanged,note)VALUES('shop002','role007','van.nhieu9','van.nhieu9','salary031','employee007','2017-02-16 21:37:09.000','1899-12-30 00:00:00','employee004',0,'NULL',N'','2016-12-13 21:36:44.000','2016-12-13 21:36:44.000',N'');


------ VIP ---------

INSERT INTO VIP(name, creator,dateCreated,dateChanged,note)VALUES(N'Khách hàng thân thiết',4,'2011-12-12 21:36:44','2011-12-12 21:36:44',N'');
INSERT INTO VIP(name, creator,dateCreated,dateChanged,note)VALUES(N'Khách hàng thành viên',4,'2011-12-13 21:36:44','2011-12-13 21:36:44',N'');
INSERT INTO VIP(name, creator,dateCreated,dateChanged,note)VALUES(N'Khách hàng VIP',4,'2011-12-14 21:36:44','2011-12-14 21:36:44',N'');

------ CUSTOMER ---------

INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop001','vip001',N'Phạm Lê Quỳnh Anh',N'Quận 1','84090234567',2,0,NULL,N'','2016-01-12 21:36:44','2016-01-12 21:36:44',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop001','vip001',N'Phạm Thị Phúc Xuân',N'Quận 2','84090234568',2,0,NULL,N'','2016-01-12 21:36:45','2016-01-12 21:36:45',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop002','vip001',N'Phạm Thị Ngọc Huyền',N'Quận 3','84090234569',17,0,NULL,N'','2016-01-12 21:36:46','2016-01-12 21:36:46',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop002','vip001',N'Phạm Thị Thảo',N'Quận 4','84090234570',17,1,17,N'','2016-01-12 21:36:47','2016-01-12 21:36:47',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop001','vip002',N'Phạm Tấn Chương',N'Quận 5','84090234571',2,0,NULL,N'','2016-01-12 21:36:48','2016-01-12 21:36:48',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop001','vip002',N'Phạm Thị An',N'Quận 6','84090234572',2,0,NULL,N'','2016-01-12 21:36:49','2016-01-12 21:36:49',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop002','vip002',N'Nguyễn Tấn Huyền',N'Quận 7','84090234573',17,0,NULL,N'','2016-01-12 21:36:50','2016-01-12 21:36:50',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop001','vip003',N'Nguyễn Đình Phong',N'Quận 3','84090234574',2,0,NULL,N'','2016-01-12 21:36:51','2016-01-12 21:36:51',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop002','vip003',N'Nguyễn Thị Đào',N'Quận 10','84090234575',17,0,NULL,N'','2016-01-12 21:36:52','2016-01-12 21:36:52',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop002','vip003',N'Huỳnh Kim Xuân',N'Quận 9','84090234576',17,0,NULL,N'','2016-01-12 21:36:53','2016-01-12 21:36:53',N'');
INSERT INTO customer(shopId, vipId, name, addressCustomer, phone,creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('shop002','vip003',N'Nguyễn Văn Nhiều',N'Quận 1','84090234577',17,0,NULL,N'','2016-01-12 21:36:54','2016-01-12 21:36:54',N'');


------ PROMOTION ---------

INSERT INTO promotion(vipId, discount, creator,voided, voidedBy, dateCreated,dateChanged,note)VALUES('vip001',5,4,0,NULL,'2011-12-12 21:36:44','2011-12-12 21:36:44',N'');
INSERT INTO promotion(vipId, discount, creator,voided, voidedBy, dateCreated,dateChanged,note)VALUES('vip002',10,4,0,NULL,'2011-12-13 21:36:44','2011-12-13 21:36:44',N'');
INSERT INTO promotion(vipId, discount, creator,voided, voidedBy, dateCreated,dateChanged,note)VALUES('vip003',15,4,0,NULL,'2011-12-14 21:36:44','2011-12-14 21:36:44',N'');


------------ SALE ---------------


INSERT INTO sale(name, descriptionSale, discount, fromTime, toTime, creator, voided, voidedBy, voidedReason, dateCreated,dateChanged,note)VALUES(N'Giờ vàng giá sốc',N'Giờ vàng giá sốc',20,'2011-12-12 00:00:00','2011-12-18 00:00:00',4,0,NULL,N'','2011-12-12 00:00:00','2011-12-12 00:00:00',N'');
INSERT INTO sale(name, descriptionSale, discount, fromTime, toTime, creator, voided, voidedBy, voidedReason, dateCreated,dateChanged,note)VALUES(N'Black Friday',N'Black Friday',25,'2012-12-13 00:00:00','2012-12-15 00:00:00',4,0,NULL,N'','2012-12-13 00:00:00','2012-12-13 00:00:00',N'');
INSERT INTO sale(name, descriptionSale, discount, fromTime, toTime, creator, voided, voidedBy, voidedReason, dateCreated,dateChanged,note)VALUES(N'Red Day',N'Red Day',10,'2016-12-14 00:00:00','2016-12-19 00:00:00',4,0,NULL,N'','2016-12-14 00:00:00','2016-12-14 00:00:00',N'');
INSERT INTO sale(name, descriptionSale, discount, fromTime, toTime, creator, voided, voidedBy, voidedReason, dateCreated,dateChanged,note)VALUES(N'Yellow Day',N'Yellow Day',15,'2017-05-15 00:00:00','2017-05-17 00:00:00',4,0,NULL,N'','2017-05-15 00:00:00','2017-05-15 00:00:00',N'');



------ CATEGORY-----

INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES(NULL,N'Quần',1,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES(NULL,N'Áo',1,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES(NULL,N'Giày',1,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES(NULL,N'Túi xách',1,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES(NULL,N'Khác',1,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category001',N'Quần Jeans',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category001',N'Quần Shorts',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category002',N'Áo khoác',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category003',N'Giày búp bê',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category003',N'Giày bít',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category003',N'Giày Sandals',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category004',N'Balo',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category004',N'Túi xách',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO category(parentCategoryId, name, creator, voided,voidedBy,voidedReason,dateCreated,dateChanged,note)VALUES('category005',N'Ví',2,0,NULL,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');


------------ PRODUCT ---------------

INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Skinny Regular Ankle Jeans',N'Xanh đậm',N'S',N'cái',N'Màu sắc: Xanh đậm. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Skinny Regular Ankle Jeans',N'Xanh đậm',N'M',N'cái',N'Màu sắc: Xanh đậm. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Skinny Regular Ankle Jeans',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Xanh đậm. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-14 21:36:44','2016-12-14 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Straight Cropped High Jeans',N'Xanh đậm',N'M',N'cái',N'Màu sắc: Xanh đậm. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Straight Cropped High Jeans',N'Xanh đậm',N'M',N'cái',N'Màu sắc: Xanh đậm. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-16 21:36:44','2016-12-16 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Skinny Regular Ankle Jeans',N'Đen',N'M',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-17 21:36:44','2016-12-17 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Super Skinny High Jeggings',N'Đen',N'M',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-18 21:36:44','2016-12-18 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Super Skinny Low Jeans',N'Đen',N'S',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-19 21:36:44','2016-12-19 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Super Skinny Low Jeans',N'Đen',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-20 21:36:44','2016-12-20 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Super Skinny High Jeggings',N'Đen',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-21 21:36:44','2016-12-21 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Super Skinny Low Jeans',N'Đen',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-22 21:36:44','2016-12-22 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category008',NULL,N'Super Skinny High Jeggings',N'Đen',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',50,4,0,NULL,'2016-12-23 21:36:44','2016-12-23 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Modal-blend Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',35,4,0,NULL,'2016-12-24 21:36:44','2016-12-24 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Superstretch Twill Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',20,4,0,NULL,'2016-12-25 21:36:44','2016-12-25 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Superstretch Twill Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2016-12-26 21:36:44','2016-12-26 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Modal-blend Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2016-12-27 21:36:44','2016-12-27 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Denim Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2016-12-28 21:36:44','2016-12-28 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Twill Shorts',N'Đen',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2016-12-29 21:36:44','2016-12-29 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Imitation Leather Shorts',N'Đen',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2016-12-30 21:36:44','2016-12-30 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Twill Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2016-12-31 21:36:44','2016-12-31 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Short Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2017-01-01 21:36:44','2017-01-01 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category009',NULL,N'Twill Shorts',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',60,4,0,NULL,'2017-01-02 21:36:44','2017-01-02 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category010',NULL,N'Biker Jacket',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',40,4,0,NULL,'2017-01-03 21:36:44','2017-01-03 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category010',NULL,N'Padded Parka',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',40,4,0,NULL,'2017-01-04 21:36:44','2017-01-04 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category010',NULL,N'Pile-lined Parka',N'Xanh đậm',N'M',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',40,4,0,NULL,'2017-01-05 21:36:44','2017-01-05 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category010',NULL,N'Long Vest',N'Xanh đậm',N'S',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',40,4,0,NULL,'2017-01-06 21:36:44','2017-01-06 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category010',NULL,N'Padded Parka',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',40,4,0,NULL,'2017-01-07 21:36:44','2017-01-07 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category010',NULL,N'Pile-lined Parka',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',40,4,0,NULL,'2017-01-08 21:36:44','2017-01-08 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category010',NULL,N'Bomber Jacket',N'Xanh đậm',N'L',N'cái',N'Màu sắc: Đen. <br/>Chiều dài:100cm.',40,4,0,NULL,'2017-01-09 21:36:44','2017-01-09 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category011',NULL,N'Giày búp bê đính nơ GBB 0374',N'Trắng',N'S',N'đôi',N'',30,4,0,NULL,'2017-01-10 21:36:44','2017-01-10 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category011',NULL,N'Giày búp bê thiết kế quai mũi GBB 0371',N'Xanh đậm',N'M',N'đôi',N'',30,4,0,NULL,'2017-01-11 21:36:44','2017-01-11 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category011',NULL,N'Giày mọi phong cách Brogue MOI 0076',N'Xanh đậm',N'L',N'đôi',N'',30,4,0,NULL,'2017-01-12 21:36:44','2017-01-12 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category011',NULL,N'Giày búp bê mũi trang trí cách điệu GBB 0370',N'Trắng',N'L',N'đôi',N'',30,4,0,NULL,'2017-01-13 21:36:44','2017-01-13 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category011',NULL,N'Giày Mọi xỏ dây MOI 0075',N'Xanh đậm',N'L',N'đôi',N'',30,4,0,NULL,'2017-01-14 21:36:44','2017-01-14 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category011',NULL,N'Giày Búp bê đính nơ GBB 0369',N'Xanh đậm',N'L',N'đôi',N'',30,4,0,NULL,'2017-01-15 21:36:44','2017-01-15 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category012',NULL,N'Giày Bít mũi nhọn da lộn BMN 0176',N'Hồng',N'M',N'đôi',N'',10,4,0,NULL,'2017-01-16 21:36:44','2017-01-16 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category012',NULL,N'Giày bít mũi nhọn BMN 0171',N'Đỏ',N'M',N'đôi',N'',80,4,0,NULL,'2017-01-17 21:36:44','2017-01-17 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category012',NULL,N'Giày bít mũi tròn BMT 0411',N'Đỏ',N'M',N'đôi',N'',40,4,0,NULL,'2017-01-18 21:36:44','2017-01-18 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category012',NULL,N'Giày bít mũi tròn BMT 0410',N'Đỏ',N'M',N'đôi',N'',40,4,0,NULL,'2017-01-19 21:36:44','2017-01-19 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category012',NULL,N'Giày bít mũi nhọn BMN 0173',N'Đỏ',N'M',N'đôi',N'',40,4,0,NULL,'2017-01-20 21:36:44','2017-01-20 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category012',NULL,N'Giày bít mũi tròn BMT 0404',N'Đỏ',N'M',N'đôi',N'',40,4,0,NULL,'2017-01-21 21:36:44','2017-01-21 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category012',NULL,N'Giày bít mũi nhọn BMN 0172',N'Đỏ',N'M',N'đôi',N'',40,4,0,NULL,'2017-01-22 21:36:44','2017-01-22 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category013',NULL,N'Giày Sandals kẹp SDK 0241',N'Đỏ',N'M',N'đôi',N'',35,4,0,NULL,'2017-01-23 21:36:44','2017-01-23 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category013',NULL,N'Giày Sandals đế xuồng SDX 0365',N'Đỏ',N'M',N'đôi',N'',35,4,0,NULL,'2017-01-24 21:36:44','2017-01-24 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category013',NULL,N'Giày Sandals mũi nhọn SDN 0495',N'Đỏ',N'M',N'đôi',N'',80,4,0,NULL,'2017-01-25 21:36:44','2017-01-25 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category013',NULL,N'Giày Sandals kẹp SDK 0236',N'Đỏ',N'M',N'đôi',N'',80,4,0,NULL,'2017-01-26 21:36:44','2017-01-26 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category013',NULL,N'Giày Sandals nhọn SDN 0503',N'Đỏ',N'M',N'đôi',N'',80,4,0,NULL,'2017-01-27 21:36:44','2017-01-27 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category013',NULL,N'Giày Sandals đế xuồng SDX 0367',N'Đỏ',N'M',N'đôi',N'',80,4,0,NULL,'2017-01-28 21:36:44','2017-01-28 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Balo TXL 1198',N'Đỏ',N'S',N'cái',N'',10,4,0,NULL,'2017-01-29 21:36:44','2017-01-29 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Balo TXL 1197',N'Đỏ',N'S',N'cái',N'',1,4,0,NULL,'2017-01-30 21:36:44','2017-01-30 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Balo khóa kéo TXL 1186',N'Đỏ',N'L',N'cái',N'',80,4,0,NULL,'2017-01-31 21:36:44','2017-01-31 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Balo thời trang trơn TXL 1248',N'Đỏ',N'L',N'cái',N'',30,4,0,NULL,'2017-02-01 21:36:44','2017-02-01 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Balo thời trang nắp gập họa tiết da rắn TXL 1187',N'Đỏ',N'L',N'cái',N'',30,4,0,NULL,'2017-02-02 21:36:44','2017-02-02 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Balo TXL 1166',N'Đỏ',N'L',N'cái',N'',30,4,0,NULL,'2017-02-03 21:36:44','2017-02-03 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách nắp gập đính kim loại TXL 1242',N'Cam',N'L',N'cái',N'',30,4,0,NULL,'2017-02-04 21:36:44','2017-02-04 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách hai quai da trơn TXL 1196',N'Vàng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-05 21:36:44','2017-02-05 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách cách điệu TXL 1195',N'Hồng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-06 21:36:44','2017-02-06 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách nắp gập khóa gài kim loại TXL 1194',N'Hồng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-07 21:36:44','2017-02-07 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách nắp hai khóa kéo TXL 1193',N'Hồng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-08 21:36:44','2017-02-08 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách tay khóa cách điệu TXL 494',N'Hồng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-09 21:36:44','2017-02-09 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách TXL 1170',N'Hồng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-10 21:36:44','2017-02-10 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách TXL 1169',N'Hồng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-11 21:36:44','2017-02-11 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category004',NULL,N'Túi xách TXL 1178',N'Hồng',N'L',N'cái',N'',30,4,0,NULL,'2017-02-12 21:36:44','2017-02-12 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Ví cầm tay BOP 0358',N'Hồng',N'M',N'cái',N'',30,4,0,NULL,'2017-02-13 21:36:44','2017-02-13 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Ví cầm tay BOP 0357',N'Hồng',N'M',N'cái',N'',60,4,0,NULL,'2017-02-14 21:36:44','2017-02-14 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Ví cầm tay BOP 0356',N'Hồng',N'M',N'cái',N'',30,4,0,NULL,'2017-02-15 21:36:44','2017-02-15 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Ví cầm tay BOP 0355',N'Hồng',N'M',N'cái',N'',70,4,0,NULL,'2017-02-16 21:36:44','2017-02-16 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Ví cầm tay BOP 0354',N'Hồng',N'M',N'cái',N'',90,4,0,NULL,'2017-02-17 21:36:44','2017-02-17 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Ví dự tiệc BOP 0353',N'Hồng',N'M',N'cái',N'',30,4,0,NULL,'2017-02-18 21:36:44','2017-02-18 21:36:44',N'');
INSERT INTO product(categoryId, saleId, name, color, size, unit, descriptionProduct, quantity, creator, voided, voidedBy, dateCreated, dateChanged, note) VALUES ('category014',NULL,N'Ví cầm tay nắp gập da xước BOP 0369',N'Hồng',N'M',N'cái',N'',30,4,0,NULL,'2017-02-19 21:36:44','2017-02-19 21:36:44',N'');


------------ PRODUCTPRICE ---------------

INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product001','img1.jpg',N'img1',N'img1',4,0,'2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product002','img2.jpg',N'img2',N'img2',4,0,'2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product003','img3.jpg',N'img3',N'img3',4,0,'2016-12-14 21:36:44','2016-12-14 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product004','img4.jpg',N'img4',N'img4',4,0,'2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product005','img5.jpg',N'img5',N'img5',4,0,'2016-12-16 21:36:44','2016-12-16 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product006','img6.jpg',N'img6',N'img6',4,0,'2016-12-17 21:36:44','2016-12-17 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product007','img7.jpg',N'img7',N'img7',4,0,'2016-12-18 21:36:44','2016-12-18 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product008','img8.jpg',N'img8',N'img8',4,0,'2016-12-19 21:36:44','2016-12-19 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product009','img9.jpg',N'img9',N'img9',4,0,'2016-12-20 21:36:44','2016-12-20 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product010','img10.jpg',N'img10',N'img10',4,0,'2016-12-21 21:36:44','2016-12-21 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product011','img11.jpg',N'img11',N'img11',4,0,'2016-12-22 21:36:44','2016-12-22 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product012','img12.jpg',N'img12',N'img12',4,0,'2016-12-23 21:36:44','2016-12-23 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product013','img13.jpg',N'img13',N'img13',4,0,'2016-12-24 21:36:44','2016-12-24 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product014','img14.jpg',N'img14',N'img14',4,0,'2016-12-25 21:36:44','2016-12-25 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product015','img15.jpg',N'img15',N'img15',4,0,'2016-12-26 21:36:44','2016-12-26 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product016','img16.jpg',N'img16',N'img16',4,0,'2016-12-27 21:36:44','2016-12-27 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product017','img17.jpg',N'img17',N'img17',4,0,'2016-12-28 21:36:44','2016-12-28 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product018','img18.jpg',N'img18',N'img18',4,0,'2016-12-29 21:36:44','2016-12-29 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product019','img19.jpg',N'img19',N'img19',4,0,'2016-12-30 21:36:44','2016-12-30 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product020','img20.jpg',N'img20',N'img20',4,0,'2016-12-31 21:36:44','2016-12-31 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product021','img21.jpg',N'img21',N'img21',4,0,'2017-01-01 21:36:44','2017-01-01 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product022','img22.jpg',N'img22',N'img22',4,0,'2017-01-02 21:36:44','2017-01-02 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product023','img23.jpg',N'img23',N'img23',4,0,'2017-01-03 21:36:44','2017-01-03 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product024','img24.jpg',N'img24',N'img24',4,0,'2017-01-04 21:36:44','2017-01-04 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product025','img25.jpg',N'img25',N'img25',4,0,'2017-01-05 21:36:44','2017-01-05 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product026','img26.jpg',N'img26',N'img26',4,0,'2017-01-06 21:36:44','2017-01-06 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product027','img27.jpg',N'img27',N'img27',4,0,'2017-01-07 21:36:44','2017-01-07 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product028','img28.jpg',N'img28',N'img28',4,0,'2017-01-08 21:36:44','2017-01-08 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product029','img29.jpg',N'img29',N'img29',4,0,'2017-01-09 21:36:44','2017-01-09 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product030','img30.jpg',N'img30',N'img30',4,0,'2017-01-10 21:36:44','2017-01-10 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product031','img31.jpg',N'img31',N'img31',4,0,'2017-01-11 21:36:44','2017-01-11 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product032','img32.jpg',N'img32',N'img32',4,0,'2017-01-12 21:36:44','2017-01-12 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product033','img33.jpg',N'img33',N'img33',4,0,'2017-01-13 21:36:44','2017-01-13 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product034','img34.jpg',N'img34',N'img34',4,0,'2017-01-14 21:36:44','2017-01-14 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product035','img35.jpg',N'img35',N'img35',4,0,'2017-01-15 21:36:44','2017-01-15 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product036','img36.jpg',N'img36',N'img36',4,0,'2017-01-16 21:36:44','2017-01-16 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product037','img37.jpg',N'img37',N'img37',4,0,'2017-01-17 21:36:44','2017-01-17 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product038','img38.jpg',N'img38',N'img38',4,0,'2017-01-18 21:36:44','2017-01-18 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product039','img39.jpg',N'img39',N'img39',4,0,'2017-01-19 21:36:44','2017-01-19 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product040','img40.jpg',N'img40',N'img40',4,0,'2017-01-20 21:36:44','2017-01-20 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product041','img41.jpg',N'img41',N'img41',4,0,'2017-01-21 21:36:44','2017-01-21 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product042','img42.jpg',N'img42',N'img42',4,0,'2017-01-22 21:36:44','2017-01-22 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product043','img43.jpg',N'img43',N'img43',4,0,'2017-01-23 21:36:44','2017-01-23 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product044','img44.jpg',N'img44',N'img44',4,0,'2017-01-24 21:36:44','2017-01-24 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product045','img45.jpg',N'img45',N'img45',4,0,'2017-01-25 21:36:44','2017-01-25 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product046','img46.jpg',N'img46',N'img46',4,0,'2017-01-26 21:36:44','2017-01-26 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product047','img47.jpg',N'img47',N'img47',4,0,'2017-01-27 21:36:44','2017-01-27 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product048','img48.jpg',N'img48',N'img48',4,0,'2017-01-28 21:36:44','2017-01-28 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product049','img49.jpg',N'img49',N'img49',4,0,'2017-01-29 21:36:44','2017-01-29 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product050','img50.jpg',N'img50',N'img50',4,0,'2017-01-30 21:36:44','2017-01-30 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product051','img51.jpg',N'img51',N'img51',4,0,'2017-01-31 21:36:44','2017-01-31 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product052','img52.jpg',N'img52',N'img52',4,0,'2017-02-01 21:36:44','2017-02-01 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product053','img53.jpg',N'img53',N'img53',4,0,'2017-02-02 21:36:44','2017-02-02 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product054','img54.jpg',N'img54',N'img54',4,0,'2017-02-03 21:36:44','2017-02-03 21:36:44',N'');
/* INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product055','img55.jpg',N'img55',N'img55',4,0,'2017-02-04 21:36:44','2017-02-04 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product056','img56.jpg',N'img56',N'img56',4,0,'2017-02-05 21:36:44','2017-02-05 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product057','img57.jpg',N'img57',N'img57',4,0,'2017-02-06 21:36:44','2017-02-06 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product058','img58.jpg',N'img58',N'img58',4,0,'2017-02-07 21:36:44','2017-02-07 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product059','img59.jpg',N'img59',N'img59',4,0,'2017-02-08 21:36:44','2017-02-08 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product060','img60.jpg',N'img60',N'img60',4,0,'2017-02-09 21:36:44','2017-02-09 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product061','img61.jpg',N'img61',N'img61',4,0,'2017-02-10 21:36:44','2017-02-10 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product062','img62.jpg',N'img62',N'img62',4,0,'2017-02-11 21:36:44','2017-02-11 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product063','img63.jpg',N'img63',N'img63',4,0,'2017-02-12 21:36:44','2017-02-12 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product064','img64.jpg',N'img64',N'img64',4,0,'2017-02-13 21:36:44','2017-02-13 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product065','img65.jpg',N'img65',N'img65',4,0,'2017-02-14 21:36:44','2017-02-14 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product066','img66.jpg',N'img66',N'img66',4,0,'2017-02-15 21:36:44','2017-02-15 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product067','img67.jpg',N'img67',N'img67',4,0,'2017-02-16 21:36:44','2017-02-16 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product068','img68.jpg',N'img68',N'img68',4,0,'2017-02-17 21:36:44','2017-02-17 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product069','img69.jpg',N'img69',N'img69',4,0,'2017-02-18 21:36:44','2017-02-18 21:36:44',N'');
INSERT INTO productImage(productId, link, title, alt, creator, voided, dateCreated, dateChanged, note) VALUES ('product070','img70.jpg',N'img70',N'img70',4,0,'2017-02-19 21:36:44','2017-02-19 21:36:44',N'');
*/

------------ STORAGE ---------------

--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product001',15,4,0,NULL,N'','2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product002',15,4,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product003',15,4,0,NULL,N'','2016-12-14 21:36:44','2016-12-14 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product004',15,4,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product005',15,4,0,NULL,N'','2016-12-16 21:36:44','2016-12-16 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product006',15,4,0,NULL,N'','2016-12-17 21:36:44','2016-12-17 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product007',15,4,0,NULL,N'','2016-12-18 21:36:44','2016-12-18 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product008',15,4,0,NULL,N'','2016-12-19 21:36:44','2016-12-19 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product009',15,4,0,NULL,N'','2016-12-20 21:36:44','2016-12-20 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product010',15,4,0,NULL,N'','2016-12-21 21:36:44','2016-12-21 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product011',15,4,0,NULL,N'','2016-12-22 21:36:44','2016-12-22 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product012',15,4,0,NULL,N'','2016-12-23 21:36:44','2016-12-23 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product013',12,4,0,NULL,N'','2016-12-24 21:36:44','2016-12-24 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product014',9,4,0,NULL,N'','2016-12-25 21:36:44','2016-12-25 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product015',17,4,0,NULL,N'','2016-12-26 21:36:44','2016-12-26 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product016',17,4,0,NULL,N'','2016-12-27 21:36:44','2016-12-27 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product017',17,4,0,NULL,N'','2016-12-28 21:36:44','2016-12-28 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product018',17,4,0,NULL,N'','2016-12-29 21:36:44','2016-12-29 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product019',17,4,0,NULL,N'','2016-12-30 21:36:44','2016-12-30 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product020',17,4,0,NULL,N'','2016-12-31 21:36:44','2016-12-31 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product021',17,4,0,NULL,N'','2017-01-01 21:36:44','2017-01-01 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product022',17,4,0,NULL,N'','2017-01-02 21:36:44','2017-01-02 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product023',13,4,0,NULL,N'','2017-01-03 21:36:44','2017-01-03 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product024',13,4,0,NULL,N'','2017-01-04 21:36:44','2017-01-04 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product025',13,4,0,NULL,N'','2017-01-05 21:36:44','2017-01-05 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product026',13,4,0,NULL,N'','2017-01-06 21:36:44','2017-01-06 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product027',13,4,0,NULL,N'','2017-01-07 21:36:44','2017-01-07 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product028',13,4,0,NULL,N'','2017-01-08 21:36:44','2017-01-08 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product029',13,4,0,NULL,N'','2017-01-09 21:36:44','2017-01-09 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product030',11,4,0,NULL,N'','2017-01-10 21:36:44','2017-01-10 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product031',11,4,0,NULL,N'','2017-01-11 21:36:44','2017-01-11 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product032',11,4,0,NULL,N'','2017-01-12 21:36:44','2017-01-12 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product033',11,4,0,NULL,N'','2017-01-13 21:36:44','2017-01-13 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product034',11,4,0,NULL,N'','2017-01-14 21:36:44','2017-01-14 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product035',11,4,0,NULL,N'','2017-01-15 21:36:44','2017-01-15 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product036',7,4,0,NULL,N'','2017-01-16 21:36:44','2017-01-16 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product037',21,4,0,NULL,N'','2017-01-17 21:36:44','2017-01-17 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product038',13,4,0,NULL,N'','2017-01-18 21:36:44','2017-01-18 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product039',13,4,0,NULL,N'','2017-01-19 21:36:44','2017-01-19 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product040',13,4,0,NULL,N'','2017-01-20 21:36:44','2017-01-20 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product041',13,4,0,NULL,N'','2017-01-21 21:36:44','2017-01-21 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product042',13,4,0,NULL,N'','2017-01-22 21:36:44','2017-01-22 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product043',12,4,0,NULL,N'','2017-01-23 21:36:44','2017-01-23 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product044',12,4,0,NULL,N'','2017-01-24 21:36:44','2017-01-24 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product045',21,4,0,NULL,N'','2017-01-25 21:36:44','2017-01-25 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product046',21,4,0,NULL,N'','2017-01-26 21:36:44','2017-01-26 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product047',21,4,0,NULL,N'','2017-01-27 21:36:44','2017-01-27 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product048',21,4,0,NULL,N'','2017-01-28 21:36:44','2017-01-28 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product049',7,4,0,NULL,N'','2017-01-29 21:36:44','2017-01-29 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product050',0,4,0,NULL,N'','2017-01-30 21:36:44','2017-01-30 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product051',21,4,0,NULL,N'','2017-01-31 21:36:44','2017-01-31 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product052',11,4,0,NULL,N'','2017-02-01 21:36:44','2017-02-01 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product053',11,4,0,NULL,N'','2017-02-02 21:36:44','2017-02-02 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product054',11,4,0,NULL,N'','2017-02-03 21:36:44','2017-02-03 21:36:44',N'');
--/*
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0055,11,4,0,NULL,N'','2017-02-04 21:36:44','2017-02-04 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0056,11,4,0,NULL,N'','2017-02-05 21:36:44','2017-02-05 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0057,11,4,0,NULL,N'','2017-02-06 21:36:44','2017-02-06 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0058,11,4,0,NULL,N'','2017-02-07 21:36:44','2017-02-07 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0059,11,4,0,NULL,N'','2017-02-08 21:36:44','2017-02-08 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0060,11,4,0,NULL,N'','2017-02-09 21:36:44','2017-02-09 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0061,11,4,0,NULL,N'','2017-02-10 21:36:44','2017-02-10 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0062,11,4,0,NULL,N'','2017-02-11 21:36:44','2017-02-11 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0063,11,4,0,NULL,N'','2017-02-12 21:36:44','2017-02-12 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0064,11,4,0,NULL,N'','2017-02-13 21:36:44','2017-02-13 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0065,17,4,0,NULL,N'','2017-02-14 21:36:44','2017-02-14 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0066,11,4,0,NULL,N'','2017-02-15 21:36:44','2017-02-15 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0067,19,4,0,NULL,N'','2017-02-16 21:36:44','2017-02-16 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0068,23,4,0,NULL,N'','2017-02-17 21:36:44','2017-02-17 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0069',11,4,0,NULL,N'','2017-02-18 21:36:44','2017-02-18 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop001','product0070',11,4,0,NULL,N'','2017-02-19 21:36:44','2017-02-19 21:36:44',N'');
--*/
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product001',35,4,0,NULL,N'','2017-02-20 21:36:44','2017-02-20 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product002',35,4,0,NULL,N'','2017-02-21 21:36:44','2017-02-21 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product003',35,4,0,NULL,N'','2017-02-22 21:36:44','2017-02-22 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product004',35,4,0,NULL,N'','2017-02-23 21:36:44','2017-02-23 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product005',35,4,0,NULL,N'','2017-02-24 21:36:44','2017-02-24 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product006',35,4,0,NULL,N'','2017-02-25 21:36:44','2017-02-25 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product007',35,4,0,NULL,N'','2017-02-26 21:36:44','2017-02-26 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product008',35,4,0,NULL,N'','2017-02-27 21:36:44','2017-02-27 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product009',35,4,0,NULL,N'','2017-02-28 21:36:44','2017-02-28 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product010',35,4,0,NULL,N'','2017-03-01 21:36:44','2017-03-01 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product011',35,4,0,NULL,N'','2017-03-02 21:36:44','2017-03-02 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product012',35,4,0,NULL,N'','2017-03-03 21:36:44','2017-03-03 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product013',23,4,0,NULL,N'','2017-03-04 21:36:44','2017-03-04 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product014',11,4,0,NULL,N'','2017-03-05 21:36:44','2017-03-05 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product015',43,4,0,NULL,N'','2017-03-06 21:36:44','2017-03-06 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product016',43,4,0,NULL,N'','2017-03-07 21:36:44','2017-03-07 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product017',43,4,0,NULL,N'','2017-03-08 21:36:44','2017-03-08 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product018',43,4,0,NULL,N'','2017-03-09 21:36:44','2017-03-09 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product019',43,4,0,NULL,N'','2017-03-10 21:36:44','2017-03-10 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product020',43,4,0,NULL,N'','2017-03-11 21:36:44','2017-03-11 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product021',43,4,0,NULL,N'','2017-03-12 21:36:44','2017-03-12 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product022',43,4,0,NULL,N'','2017-03-13 21:36:44','2017-03-13 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product023',27,4,0,NULL,N'','2017-03-14 21:36:44','2017-03-14 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product024',27,4,0,NULL,N'','2017-03-15 21:36:44','2017-03-15 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product025',27,4,0,NULL,N'','2017-03-16 21:36:44','2017-03-16 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product026',27,4,0,NULL,N'','2017-03-17 21:36:44','2017-03-17 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product027',27,4,0,NULL,N'','2017-03-18 21:36:44','2017-03-18 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product028',27,4,0,NULL,N'','2017-03-19 21:36:44','2017-03-19 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product029',27,4,0,NULL,N'','2017-03-20 21:36:44','2017-03-20 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product030',19,4,0,NULL,N'','2017-03-21 21:36:44','2017-03-21 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product031',19,4,0,NULL,N'','2017-03-22 21:36:44','2017-03-22 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product032',19,4,0,NULL,N'','2017-03-23 21:36:44','2017-03-23 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product033',19,4,0,NULL,N'','2017-03-24 21:36:44','2017-03-24 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product034',19,4,0,NULL,N'','2017-03-25 21:36:44','2017-03-25 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product035',19,4,0,NULL,N'','2017-03-26 21:36:44','2017-03-26 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product036',3,4,0,NULL,N'','2017-03-27 21:36:44','2017-03-27 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product037',59,4,0,NULL,N'','2017-03-28 21:36:44','2017-03-28 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product038',27,4,0,NULL,N'','2017-03-29 21:36:44','2017-03-29 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product039',27,4,0,NULL,N'','2017-03-30 21:36:44','2017-03-30 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product040',27,4,0,NULL,N'','2017-03-31 21:36:44','2017-03-31 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product041',27,4,0,NULL,N'','2017-04-01 21:36:44','2017-04-01 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product042',27,4,0,NULL,N'','2017-04-02 21:36:44','2017-04-02 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product043',23,4,0,NULL,N'','2017-04-03 21:36:44','2017-04-03 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product044',23,4,0,NULL,N'','2017-04-04 21:36:44','2017-04-04 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product045',59,4,0,NULL,N'','2017-04-05 21:36:44','2017-04-05 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product046',59,4,0,NULL,N'','2017-04-06 21:36:44','2017-04-06 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product047',59,4,0,NULL,N'','2017-04-07 21:36:44','2017-04-07 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product048',59,4,0,NULL,N'','2017-04-08 21:36:44','2017-04-08 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product049',3,4,0,NULL,N'','2017-04-09 21:36:44','2017-04-09 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product050',1,4,0,NULL,N'','2017-04-10 21:36:44','2017-04-10 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product051',59,4,0,NULL,N'','2017-04-11 21:36:44','2017-04-11 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product052',19,4,0,NULL,N'','2017-04-12 21:36:44','2017-04-12 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product053',19,4,0,NULL,N'','2017-04-13 21:36:44','2017-04-13 21:36:44',N'');
--INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product054',19,4,0,NULL,N'','2017-04-14 21:36:44','2017-04-14 21:36:44',N'');
/*
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0055,19,4,0,NULL,N'','2017-04-15 21:36:44','2017-04-15 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0056,19,4,0,NULL,N'','2017-04-16 21:36:44','2017-04-16 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0057,19,4,0,NULL,N'','2017-04-17 21:36:44','2017-04-17 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0058,19,4,0,NULL,N'','2017-04-18 21:36:44','2017-04-18 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0059,19,4,0,NULL,N'','2017-04-19 21:36:44','2017-04-19 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0060,19,4,0,NULL,N'','2017-04-20 21:36:44','2017-04-20 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0061,19,4,0,NULL,N'','2017-04-21 21:36:44','2017-04-21 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0062,19,4,0,NULL,N'','2017-04-22 21:36:44','2017-04-22 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0063,19,4,0,NULL,N'','2017-04-23 21:36:44','2017-04-23 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0064,19,4,0,NULL,N'','2017-04-24 21:36:44','2017-04-24 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0065,43,4,0,NULL,N'','2017-04-25 21:36:44','2017-04-25 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0066,19,4,0,NULL,N'','2017-04-26 21:36:44','2017-04-26 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0067,51,4,0,NULL,N'','2017-04-27 21:36:44','2017-04-27 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0068,67,4,0,NULL,N'','2017-04-28 21:36:44','2017-04-28 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0069,19,4,0,NULL,N'','2017-04-29 21:36:44','2017-04-29 21:36:44',N'');
INSERT INTO storage(shopId, productId, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('shop002','product0070,19,4,0,NULL,N'','2017-04-30 21:36:44','2017-04-30 21:36:44',N'');
*/
------------ PRODUCTPRICE ---------------


INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product001',1,500000,4,'2016-12-12 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product001',2,600000,4,'2016-12-13 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product002',1,500000,4,'2016-12-14 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product003',1,500000,4,'2016-12-15 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product004',1,500000,4,'2016-12-16 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product004',2,600000,4,'2016-12-17 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product005',1,500000,4,'2016-12-18 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product006',1,500000,4,'2016-12-19 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product007',1,500000,4,'2016-12-20 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product008',1,500000,4,'2016-12-21 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product009',1,500000,4,'2016-12-22 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product010',1,500000,4,'2016-12-23 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product011',1,500000,4,'2016-12-24 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product012',1,500000,4,'2016-12-25 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product013',1,500000,4,'2016-12-26 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product014',1,500000,4,'2016-12-27 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product015',1,500000,4,'2016-12-28 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product016',1,500000,4,'2016-12-29 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product017',1,500000,4,'2016-12-30 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product018',1,500000,4,'2016-12-31 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product019',1,500000,4,'2017-01-01 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product020',1,500000,4,'2017-01-02 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product021',1,500000,4,'2017-01-03 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product022',1,500000,4,'2017-01-04 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product023',1,500000,4,'2017-01-05 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product024',1,500000,4,'2017-01-06 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product025',1,500000,4,'2017-01-07 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product026',1,500000,4,'2017-01-08 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product027',1,500000,4,'2017-01-09 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product028',1,500000,4,'2017-01-10 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product029',1,500000,4,'2017-01-11 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product030',1,500000,4,'2017-01-12 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product031',1,500000,4,'2017-01-13 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product032',1,500000,4,'2017-01-14 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product033',1,500000,4,'2017-01-15 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product034',1,500000,4,'2017-01-16 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product035',1,500000,4,'2017-01-17 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product036',1,500000,4,'2017-01-18 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product037',1,500000,4,'2017-01-19 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product038',1,500000,4,'2017-01-20 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product039',1,500000,4,'2017-01-21 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product040',1,550000,4,'2017-01-22 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product041',1,550000,4,'2017-01-23 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product042',1,550000,4,'2017-01-24 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product043',1,550000,4,'2017-01-25 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product044',1,550000,4,'2017-01-26 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product045',1,550000,4,'2017-01-27 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product046',1,550000,4,'2017-01-28 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product047',1,550000,4,'2017-01-29 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product048',1,550000,4,'2017-01-30 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product049',1,550000,4,'2017-01-31 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product050',1,550000,4,'2017-02-01 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product051',1,550000,4,'2017-02-02 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product052',1,550000,4,'2017-02-03 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product053',1,550000,4,'2017-02-04 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product054',1,550000,4,'2017-02-05 21:36:44',N'');
/*
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product055',1,550000,4,'2017-02-06 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product056',1,550000,4,'2017-02-07 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product057',1,550000,4,'2017-02-08 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product058',1,550000,4,'2017-02-09 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product059',1,550000,4,'2017-02-10 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product060',1,550000,4,'2017-02-11 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product061',1,550000,4,'2017-02-12 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product062',1,550000,4,'2017-02-13 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product063',1,550000,4,'2017-02-14 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product064',1,550000,4,'2017-02-15 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product065',1,550000,4,'2017-02-16 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product066',1,550000,4,'2017-02-17 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product067',1,550000,4,'2017-02-18 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product068',1,550000,4,'2017-02-19 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product069',1,550000,4,'2017-02-20 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product070',1,550000,4,'2017-02-21 21:36:44',N'');
INSERT INTO productPrice(productId, numberPrice, price, creator, dateCreated, note) VALUES ('product070',2,650000,4,'2017-02-22 21:36:44',N'');
*/

------------ ORDER ---------------

--INSERT INTO orderCus(customerId, creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('customer003',3,0,NULL,N'','2016-12-20 21:36:44','2016-12-20 21:36:44',N'');
--INSERT INTO orderCus(customerId, creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('customer003',3,0,NULL,N'','2017-01-21 21:36:44','2017-01-21 21:36:44',N'');
--INSERT INTO orderCus(customerId, creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('customer003',3,0,NULL,N'','2017-03-22 21:36:44','2017-03-22 21:36:44',N'');


------------ ORDERDETAIL ---------------

--INSERT INTO orderDetail(orderId, productId, numberPrice,  quantity, discount, creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('order001','product001',1,2,5,3,0,NULL,N'','2016-12-20 21:36:44','2016-12-20 21:36:44',N'');
--INSERT INTO orderDetail(orderId, productId, numberPrice,  quantity, discount, creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('order001','product002',1,1,5,3,0,NULL,N'','2016-12-21 21:36:44','2016-12-21 21:36:44',N'');
--INSERT INTO orderDetail(orderId, productId, numberPrice,  quantity, discount, creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('order002','product003',1,2,5,3,0,NULL,N'','2017-01-21 21:36:44','2017-01-21 21:36:44',N'');
--INSERT INTO orderDetail(orderId, productId, numberPrice,  quantity, discount, creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('order003','product004',1,2,10,3,0,NULL,N'','2017-03-22 21:36:44','2017-03-22 21:36:44',N'');


------------ SUPPLIER  ---------------
INSERT INTO supplier(name, addressSupplier, phone, email, creator, voided, voidedBy, voidedReason,dateCreated, dateChanged, note) VALUES (N'Vissan Wkc',N'Quận 1','84898767889',N'quynhnhucheer@gmail.com',4,0,NULL,N'','2016-12-12 21:36:44','2016-12-12 21:36:44',N'');
INSERT INTO supplier(name, addressSupplier, phone, email, creator, voided, voidedBy, voidedReason,dateCreated, dateChanged, note) VALUES (N'Hàng Xuất Khẩu',N'Quận 2','84898767890',N'quynhnhuq@gmail.com',4,0,NULL,N'','2016-12-14 21:36:44','2016-12-14 21:36:44',N'');
INSERT INTO supplier(name, addressSupplier, phone, email, creator, voided, voidedBy, voidedReason,dateCreated, dateChanged, note) VALUES (N'Hàn Quốc',N'Quận 3','84898767891',N'quynhnhuu@gmail.com',4,0,NULL,N'','2016-12-14 21:36:44','2016-12-14 21:36:44',N'');
INSERT INTO supplier(name, addressSupplier, phone, email, creator, voided, voidedBy, voidedReason,dateCreated, dateChanged, note) VALUES (N'TomBoy',N'Quận 4','84898767892',N'quynhnhi@gmail.com',4,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');

------------ IMPORT PRODUCT PRICE ---------------


INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product001',1,450000,6,'2016-12-13 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product001',2,550000,6,'2016-12-14 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product002',1,450000,6,'2016-12-15 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product003',1,450000,6,'2016-12-16 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product004',1,450000,6,'2016-12-17 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product004',2,550000,6,'2016-12-18 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product005',1,450000,6,'2016-12-19 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product006',1,450000,6,'2016-12-20 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product007',1,450000,6,'2016-12-21 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product008',1,450000,6,'2016-12-22 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product009',1,450000,6,'2016-12-23 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product010',1,450000,6,'2016-12-24 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product011',1,450000,6,'2016-12-25 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product012',1,450000,6,'2016-12-26 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product013',1,450000,6,'2016-12-27 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product014',1,450000,6,'2016-12-28 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product015',1,450000,6,'2016-12-29 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product016',1,450000,6,'2016-12-30 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product017',1,450000,6,'2016-12-31 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product018',1,450000,6,'2017-01-01 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product019',1,450000,6,'2017-01-02 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product020',1,450000,6,'2017-01-03 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product021',1,450000,6,'2017-01-04 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product022',1,450000,6,'2017-01-05 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product023',1,450000,6,'2017-01-06 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product024',1,450000,6,'2017-01-07 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product025',1,450000,6,'2017-01-08 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product026',1,450000,6,'2017-01-09 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product027',1,450000,6,'2017-01-10 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product028',1,450000,6,'2017-01-11 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product029',1,450000,6,'2017-01-12 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product030',1,450000,6,'2017-01-13 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product031',1,450000,6,'2017-01-14 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product032',1,450000,6,'2017-01-15 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product033',1,450000,6,'2017-01-16 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product034',1,450000,6,'2017-01-17 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product035',1,450000,6,'2017-01-18 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product036',1,450000,6,'2017-01-19 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product037',1,450000,6,'2017-01-20 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product038',1,450000,6,'2017-01-21 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product039',1,450000,6,'2017-01-22 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product040',1,500000,6,'2017-01-23 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product041',1,500000,6,'2017-01-24 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product042',1,500000,6,'2017-01-25 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product043',1,500000,6,'2017-01-26 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product044',1,500000,6,'2017-01-27 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product045',1,500000,6,'2017-01-28 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product046',1,500000,6,'2017-01-29 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product047',1,500000,6,'2017-01-30 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product048',1,500000,6,'2017-01-31 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product049',1,500000,6,'2017-02-01 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product050',1,500000,6,'2017-02-02 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product051',1,500000,6,'2017-02-03 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product052',1,500000,6,'2017-02-04 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product053',1,500000,6,'2017-02-05 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product054',1,500000,6,'2017-02-06 21:36:44',N'');
/*
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product055',1,500000,6,'2017-02-07 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product056',1,500000,6,'2017-02-08 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product057',1,500000,6,'2017-02-09 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product058',1,500000,6,'2017-02-10 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product059',1,500000,6,'2017-02-11 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product060',1,500000,6,'2017-02-12 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product061',1,500000,6,'2017-02-13 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product062',1,500000,6,'2017-02-14 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product063',1,500000,6,'2017-02-15 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product064',1,500000,6,'2017-02-16 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product065',1,500000,6,'2017-02-17 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product066',1,500000,6,'2017-02-18 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product067',1,500000,6,'2017-02-19 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product068',1,500000,6,'2017-02-20 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product069',1,500000,6,'2017-02-21 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product070',1,500000,6,'2017-02-22 21:36:44',N'');
INSERT INTO importProductPrice(productId, importNumberPrice, importPrice, creator, dateCreated, note) VALUES ('product070',2,600000,6,'2017-02-23 21:36:44',N'');
*/

------------ IMPORT VOUCHER  ---------------

INSERT INTO importVoucher(supplierId, creator, paid, paidBy, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('supplier001',9,1,23,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucher(supplierId, creator, paid, paidBy, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('supplier004',21,1,11,0,NULL,N'','2016-12-14 21:36:44','2016-12-14 21:36:44',N'');
INSERT INTO importVoucher(supplierId, creator, paid, paidBy, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('supplier003',9,1,23,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucher(supplierId, creator, paid, paidBy, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('supplier002',9,1,23,0,NULL,N'','2016-12-15 22:36:44','2016-12-15 22:36:44',N'');



------------ IMPORT VOUCHER DETAIL ---------------

INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product001',2,52,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product002',1,51,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product003',1,52,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product004',1,52,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product005',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product006',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product007',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product008',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product009',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product010',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product011',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product012',1,50,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product013',1,35,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product014',1,20,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product015',1,60,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product016',1,60,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product017',1,60,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product018',1,60,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product019',1,60,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import001','product020',1,60,9,0,NULL,N'','2016-12-13 21:36:44','2016-12-13 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product021',1,60,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product022',1,60,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product023',1,40,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product024',1,40,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product025',1,40,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product026',1,40,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product027',1,40,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product028',1,40,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product029',1,40,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product030',1,30,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product031',1,30,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product032',1,30,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product033',1,30,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product034',1,30,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product035',1,30,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product036',1,10,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import004','product037',1,80,21,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product038',1,40,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product039',1,40,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product040',1,40,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product041',1,40,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product042',1,40,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product043',1,35,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product044',1,35,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product045',1,80,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product046',1,80,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product047',1,80,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product048',1,80,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product049',1,10,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product050',1,1,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product051',1,80,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product052',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product053',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product054',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
/*
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product055',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product056',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product057',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product058',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product059',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product060',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product061',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product062',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product063',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product064',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product065',1,60,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product066',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product067',1,70,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product068',1,90,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product069',1,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');
INSERT INTO importVoucherDetail(importId, productId, importNumberPrice, quantity,creator, voided, voidedBy, voidedReason, dateCreated, dateChanged, note) VALUES ('import003','product070',2,30,9,0,NULL,N'','2016-12-15 21:36:44','2016-12-15 21:36:44',N'');

*/
UPDATE category SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE customer SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE employee SET retiredBy = 'employee' + RIGHT('000' + CAST(retiredBy AS NVARCHAR(3)), 3) WHERE retiredBy IS NOT NULL
UPDATE importVoucher SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE importVoucherDetail SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
--UPDATE orderCus SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
--UPDATE orderDetail SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE product SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE promotion SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE sale SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE shop SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
--UPDATE storage SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL
UPDATE supplier SET voidedBy = 'employee' + RIGHT('000' + CAST(voidedBy AS NVARCHAR(3)), 3) WHERE voidedBy IS NOT NULL

UPDATE category SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE customer SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE employee SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE importProductPrice SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE importVoucher SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE importVoucherDetail SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
--UPDATE orderCus SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
--UPDATE orderDetail SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE product SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE productImage SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE productPrice SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE promotion SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE role SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE sale SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE shop SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
--UPDATE storage SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE supplier SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)
UPDATE VIP SET creator = 'employee' + RIGHT('000' + CAST(creator AS NVARCHAR(3)), 3)

UPDATE employee SET managerId = 'employee' + RIGHT('000' + CAST(managerId AS NVARCHAR(3)), 3)
UPDATE importVoucher SET paidBy = 'employee' + RIGHT('000' + CAST(paidBy AS NVARCHAR(3)), 3)
