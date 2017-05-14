USE [ThoiTrang_CSDL]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:1. Là nhân viên bán hàng, tôi muốn tạo tài khoản cho khách hàng 
-- Location: SHOP001
-- =============================================
CREATE PROCEDURE insert_customer
      @vipId nvarchar(6)
      ,@name nvarchar(200)
      ,@addressCustomer nvarchar(200)
      ,@phone varchar(100)
      ,@creator nvarchar(11)
      ,@note nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @shopId nvarchar(7);
	SET @shopId = 'shop001';

	INSERT INTO [Company].[ThoiTrang_CSDL].[dbo].[customer]
		([shopId]
		,[vipId]
		,[name]
		,[addressCustomer]
		,[phone]
		,[creator]
		,[dateCreated]
		,[dateChanged]
		,[note]
		)
	VALUES
		(
		@shopId
		,@vipId
		,@name
		,@addressCustomer
		,@phone 
		,@creator
		,GETDATE()
		,GETDATE() 
		,@note 
		)
END
GO
