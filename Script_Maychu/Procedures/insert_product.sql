USE [ThoiTrang_CSDL]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:	21.	Là nhân viên quản trị, tôi muốn thêm sản phẩm
-- Location: company
-- =============================================
CREATE PROCEDURE insert_product
	@categoryId nvarchar(11)
	,@saleId nvarchar(7)
	,@name nvarchar(200)
      ,@color nvarchar(100)
      ,@size nvarchar(100)
      ,@unit nvarchar(100)
      ,@descriptionProduct nvarchar(255)
      ,@quantity int
      ,@creator nvarchar(11)
      ,@note nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [ThoiTrang_CSDL].[dbo].[product]
           (	
		  [categoryId]
		  ,[saleId]
		  ,[name]
		  ,[color]
		  ,[size]
		  ,[unit]
		  ,[descriptionProduct]
		  ,[quantity]
		  ,[creator]
		  ,[dateCreated]
		  ,[dateChanged]
		  ,[note]
		   )
     VALUES
           (	
		  @categoryId
		  ,@saleId
		  ,@name
		  ,@color
		  ,@size
		  ,@unit
		  ,@descriptionProduct
		  ,@quantity
		  ,@creator
           ,GETDATE()
           ,GETDATE()
           ,@note
		   )
END
GO
