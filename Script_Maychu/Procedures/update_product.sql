USE [ThoiTrang_CSDL]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:	22. Là nhân viên quản trị, tôi muốn cập nhật sản phẩm 
-- Location: Company
-- =============================================
CREATE PROCEDURE [dbo].[update_product]
	@productId nvarchar(10)
	,@categoryId nvarchar(11) = NULL
	,@saleId nvarchar(7) = NULL
	,@name nvarchar(200) = NULL
    ,@color nvarchar(100) = NULL
    ,@size nvarchar(100) = NULL
    ,@unit nvarchar(100) = NULL
    ,@descriptionProduct nvarchar(255) = NULL
    ,@quantity int = NULL
    ,@note nvarchar(255) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    DECLARE @SQLQuery AS nvarchar(4000);
    DECLARE @ParamDefinition AS nvarchar(2000);
	SET @SQLQuery = 'UPDATE [ThoiTrang_CSDL].[dbo].[product] SET [dateChanged] = GETDATE()';
    If @categoryId IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [categoryId] = @categoryId';
    If @saleId IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [saleId] = @saleId';
    If @name IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [name] = @name';
    If @color IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [color] = @color';
    If @size IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [size] = @size';
    If @unit IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [unit] = @unit';
    If @descriptionProduct IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [descriptionProduct] = @descriptionProduct';
    If @quantity IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [quantity] = @quantity';
    If @note IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [note] = @note'
	SET @SQLQuery = @SQLQuery + ' WHERE [productId] = @productId';
	
	SET @ParamDefinition = '
	@productId nvarchar(10)
	,@categoryId nvarchar(11)
	,@saleId nvarchar(7)
	,@name nvarchar(200)
    ,@color nvarchar(100)
    ,@size nvarchar(100)
    ,@unit nvarchar(100)
    ,@descriptionProduct nvarchar(255)
    ,@quantity int
    ,@note nvarchar(255)';
    Execute sp_Executesql @SQLQuery 
                ,@ParamDefinition
				,@productId
				,@categoryId
				,@saleId
				,@name
				,@color
				,@size
				,@unit
				,@descriptionProduct
				,@quantity
				,@note;

    If @@ERROR <> 0 GoTo ErrorHandler
    Set NoCount OFF
    Return(0)
  
ErrorHandler:
    Return(@@ERROR) 
END
