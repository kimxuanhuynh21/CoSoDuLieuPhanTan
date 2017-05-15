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
CREATE PROCEDURE update_product
	@productId nvarchar(10)
	,@categoryId nvarchar(11)
	,@saleId nvarchar(7)
	,@name nvarchar(200)
    ,@color nvarchar(100)
    ,@size nvarchar(100)
    ,@unit nvarchar(100)
    ,@descriptionProduct nvarchar(255)
    ,@quantity int
    ,@note nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	UPDATE [ThoiTrang_CSDL].[dbo].[product]
	   SET [categoryId] = @categoryId
		  ,[saleId] = @saleId
		  ,[name] = @name
		  ,[color] = @color
		  ,[size] = @size
		  ,[unit] = @unit
		  ,[descriptionProduct] = @descriptionProduct
		  ,[quantity] = @quantity
		  ,[dateChanged] = GETDATE()
		  ,[note] = @note
	 WHERE [productId] = @productId 
END
GO


