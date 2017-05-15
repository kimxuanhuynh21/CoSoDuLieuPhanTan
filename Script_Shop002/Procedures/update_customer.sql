SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:2. Là nhân viên bán hàng, tôi muốn cập nhật tài khoản cho khách hàng  
-- Location: SHOP002
-- =============================================
CREATE PROCEDURE update_customer
	@customerId nvarchar(11)
	,@vipId nvarchar(6)
	,@name nvarchar(200) 
	,@addressCustomer nvarchar(200)
	,@phone varchar(100)
	,@note nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	UPDATE [Company].[ThoiTrang_CSDL].[dbo].[customer]
	SET [vipId] = @vipId
		,[name] = @name
		,[addressCustomer] = @addressCustomer
		,[phone] = @phone
		,[dateChanged] = GETDATE()
		,[note] = @note
	WHERE [customerId] = @customerId

END
GO




