Use [ThoiTrang_CSDL]
Go

--Kết nối tới shop 
-- Tạo mới một login tới linked server (từ máy chủ link đến máy ảo)
EXEC sp_addlinkedserver
@server = N'Company',
@provider=N'SQLOLEDB',
@datasrc= N'192.168.56.1\SQLEXPRESS', -- Thay IP hoặc tên máy cho phù hợp
@srvproduct='SQLProduct'
Go
--- Kiểm tra kết nối
EXEC sp_linkedservers
GO
-- Thực hiện kết nối, đăng nhập tới linked server
EXEC master.dbo.sp_addlinkedsrvlogin
@rmtsrvname=N'Company',
@useself=N'False',
@locallogin=NULL,
@rmtuser=N'maychu', -- Thay tên đăng nhập và mật khẩu phù hợp
@rmtpassword='123456789'
GO

IF EXISTS(SELECT * FROM sys.servers WHERE name = N'AccessDataSource')
EXEC master.sys.sp_dropserver 'AccessDataSource','droplogins'  
GO

