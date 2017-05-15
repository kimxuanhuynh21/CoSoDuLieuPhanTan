SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:	21.	Là nhân viên quản trị, tôi muốn hiển thị khách hàng theo điều kiện
-- Location: Company
-- =============================================
CREATE PROCEDURE select_customer_by_conditions
	@shopId nvarchar(7) = NULL
	,@vipId nvarchar(6) = NULL
	,@name nvarchar(200) = NULL
	,@addressCustomer nvarchar(200) = NULL
	,@phone varchar(100) = NULL
	,@creator nvarchar(11) = NULL
	,@voided tinyint = NULL
	,@voidedBy nvarchar(11) = NULL
AS
BEGIN
	SELECT *
	FROM [ThoiTrang_CSDL].[dbo].[customer]
	WHERE
		(@shopId IS NULL OR (shopId = @shopId))
	AND (@vipId IS NULL OR (vipId = @vipId))
	AND (@name IS NULL OR (name  LIKE '%'+@name+'%'))
	AND (@addressCustomer IS NULL OR (addressCustomer LIKE '%'+@addressCustomer+'%'))
	AND (@phone IS NULL OR (phone = @phone))
	AND (@creator IS NULL OR (creator LIKE '%'+@creator+'%'))
	AND (@voided IS NULL OR (voided = @voided))
	AND (@voidedBy IS NULL OR (voidedBy LIKE '%'+@voidedBy+'%'))

END
GO
