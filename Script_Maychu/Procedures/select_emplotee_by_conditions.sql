SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:	21.	Là nhân viên quản trị, tôi muốn hiển thị nhân viên theo điều kiện
-- Location: Company
-- =============================================
CREATE PROCEDURE select_employee_by_conditions
	@shopId nvarchar(7),
	@roleId nvarchar(7),
	@username varchar(100),
	@salaryId nvarchar(9),
	@managerId nvarchar(11),
	@creator nvarchar(11),
	@retired tinyint, 
	@retiredBy nvarchar(11), 
	@name nvarchar(200),
	@addressEmployee nvarchar(200),
	@phone varchar(100),
	@email varchar(100)
AS
BEGIN
	SELECT *
	FROM [ThoiTrang_CSDL].[dbo].[view_employee]
	WHERE
		(@shopId IS NULL OR (shopId = @shopId))
	AND (@roleId IS NULL OR (roleId = @roleId))
	AND (@username IS NULL OR (username = @username))
	AND (@salaryId IS NULL OR (salaryId = @salaryId))
	AND (@managerId IS NULL OR (managerId = @managerId))
	AND (@creator IS NULL OR (creator <= @creator))
	AND (@retired IS NULL OR (retired >= @retired))@name
	AND (@retiredBy IS NULL OR (retiredBy = @retiredBy))
	AND (@name IS NULL OR (name = @name))
	AND (@addressEmployee IS NULL OR (addressEmployee = @addressEmployee))
	AND (@phone IS NULL OR (phone = @phone))
	AND (@email IS NULL OR (email = @email))
END
GO
