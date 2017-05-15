USE [ThoiTrang_CSDL]
GO
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
	,@name nvarchar(200) = NULL
	,@addressSupplier nvarchar(200) = NULL
	,@phone varchar(100) = NULL
	,@email varchar(100) = NULL
	,@note nvarchar(255) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    DECLARE @SQLQuery AS nvarchar(4000);
    DECLARE @ParamDefinition AS nvarchar(2000);
	SET @SQLQuery = 'UPDATE [ThoiTrang_CSDL].[dbo].[supplier] SET [dateChanged] = GETDATE()';
    If @name IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [name] = @name';
    If @addressSupplier IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [addressSupplier] = @addressSupplier';
    If @phone IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [phone] = @phone';
    If @email IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [email] = @email';
    If @note IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [note] = @note'
	SET @SQLQuery = @SQLQuery + ' WHERE [supplierId] = @supplierId';
	
	SET @ParamDefinition = '@supplierId nvarchar(11)
	,@name nvarchar(200)
	,@addressSupplier nvarchar(200)
	,@phone varchar(100)
	,@email varchar(100)';
	PRINT @SQLQuery;
    Execute sp_Executesql @SQLQuery 
                ,@ParamDefinition
				,@supplierId
				,@name
				,@addressSupplier
				,@phone
				,@email;

    If @@ERROR <> 0 GoTo ErrorHandler
    Set NoCount OFF
    Return(0)
  
ErrorHandler:
    Return(@@ERROR) 
END
GO


