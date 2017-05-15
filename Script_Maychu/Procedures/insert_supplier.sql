USE [ThoiTrang_CSDL]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:	21.	Là nhân viên quản trị, tôi muốn thêm nhà cung cấp
-- Location: company
-- =============================================
CREATE PROCEDURE insert_supplier
	@name nvarchar(200)
	,@addressSupplier nvarchar(200)
	,@phone varchar(100)
	,@email varchar(100)
	,@creator nvarchar(11)
	,@note nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [ThoiTrang_CSDL].[dbo].[supplier]
           (
		   [name]
           ,[addressSupplier]
           ,[phone]
           ,[email]
           ,[creator]
           ,[dateCreated]
           ,[dateChanged]
           ,[note]
		   )
     VALUES
           (
		   @name
           ,@addressSupplier
           ,@phone
           ,@email
           ,@creator
           ,GETDATE()
           ,GETDATE()
           ,@note
		   )
END
GO
