Use [ThoiTrang_CSDL]
Go

--Kết nối tới shop 1
-- Tạo mới một login tới linked server (từ máy chủ link đến máy ảo)
EXEC sp_addlinkedserver
@server = N'SRV_SHOP001',
@provider=N'SQLOLEDB',
@datasrc= N'192.168.56.101\SQLEXPRESS', -- Thay IP hoặc tên máy cho phù hợp
@srvproduct='SQLProduct'
Go
--- Kiểm tra kết nối
EXEC sp_linkedservers

-- Thực hiện kết nối, đăng nhập tới linked server
EXEC master.dbo.sp_addlinkedsrvlogin
@rmtsrvname=N'SRV_SHOP001',
@useself=N'False',
@locallogin=NULL,
@rmtuser=N'mayao', -- Thay tên đăng nhập và mật khẩu phù hợp
@rmtpassword='123456789'
GO

--- Tạo 3 kết nối tới 3 máy ảo, script như trên, đổi tên server và datasrc---

--Kết nối tới shop 2

-- Tạo mới một login tới linked server (từ máy chủ link đến máy ảo)
EXEC sp_addlinkedserver
@server = N'SRV_SHOP002',
@provider = N'SQLOLEDB',
@datasrc = N'192.168.56.102\SQLexpress', -- Thay IP hoặc tên máy cho phù hợp
@srvproduct = 'SQLProduct'
Go
--- Kiểm tra kết nối
EXEC sp_linkedservers

-- Thực hiện kết nối, đăng nhập tới linked server
EXEC master.dbo.sp_addlinkedsrvlogin
@rmtsrvname = N'SRV_SHOP002',
@useself = N'False',
@locallogin = NULL,
@rmtuser = N'mayao',  -- Thay tên đăng nhập và mật khẩu phù hợp
@rmtpassword = '123456789'

-- Xóa linkedsrvlogin
IF EXISTS(SELECT * FROM sys.servers WHERE name = N'SRV_SHOP004')
EXEC master.sys.sp_dropserver 'SRV_SHOP004','droplogins'  
GO