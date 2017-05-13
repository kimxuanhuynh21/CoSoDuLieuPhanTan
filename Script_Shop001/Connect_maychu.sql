Use [ThoiTrang_CSDL]
Go

--Kết nối tới shop 1
-- Tạo mới một login tới linked server (từ máy chủ link đến máy ảo)
EXEC sp_addlinkedserver
@server = N'Company',
@provider=N'SQLOLEDB',
@datasrc= N'ADMINRG-R0BR3ES\SQLEXPRESS', -- Thay IP hoặc tên máy cho phù hợp
@srvproduct='SQLProduct'
Go
--- Kiểm tra kết nối
EXEC sp_linkedservers

-- Thực hiện kết nối, đăng nhập tới linked server
EXEC master.dbo.sp_addlinkedsrvlogin
@rmtsrvname=N'Company',
@useself=N'False',
@locallogin=NULL,
@rmtuser=N'maychu', -- Thay tên đăng nhập và mật khẩu phù hợp
@rmtpassword='123456789'
GO

