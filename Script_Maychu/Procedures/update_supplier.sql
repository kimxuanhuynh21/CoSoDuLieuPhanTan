SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:	22. Là nhân viên quản trị, tôi muốn cập nhật nhà cung cấp 
-- Location: Company
-- =============================================
CREATE PROCEDURE update_supplier
	@supplierId nvarchar(11)
	,@name nvarchar(200)
	,@addressSupplier nvarchar(200)
	,@phone varchar(100)
	,@email varchar(100)
	,@note nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	UPDATE [ThoiTrang_CSDL].[dbo].[supplier]
	   SET [name] = @name
		  ,[addressSupplier] = @addressSupplier
		  ,[phone] = @phone
		  ,[email] = @email
		  ,[dateChanged] = GETDATE()
		  ,[note] = @note
	 WHERE [supplierId] = @supplierId 
END
GO


