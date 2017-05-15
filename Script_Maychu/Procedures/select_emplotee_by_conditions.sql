USE [ThoiTrang_CSDL]
GO
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
	@shopId nvarchar(7)= NULL,
	@roleId nvarchar(7)= NULL,
	@username varchar(100)= NULL,
	@maxsalary int = NULL,
	@minsalary int = NULL,
	@managerId nvarchar(11)= NULL,
	@creator nvarchar(11)= NULL,
	@retired tinyint= NULL, 
	@retiredBy nvarchar(11)= NULL, 
	@name nvarchar(200)= NULL,
	@addressEmployee nvarchar(200)= NULL,
	@phone varchar(100)= NULL,
	@email varchar(100)= NULL
AS
BEGIN
	SELECT *
	FROM [ThoiTrang_CSDL].[dbo].[view_employee]
	WHERE
		(@shopId IS NULL OR (shopId = @shopId))
	AND (@roleId IS NULL OR (roleId = @roleId))
	AND (@username IS NULL OR (username LIKE '%'+@username+'%'))
	AND (@managerId IS NULL OR (managerId LIKE '%'+@managerId+'%'))
	AND (@creator IS NULL OR (creator LIKE '%'+@creator+'%'))
	AND (@retired IS NULL OR (retired = @retired))
	AND (@retiredBy IS NULL OR (retiredBy LIKE '%'+@retiredBy+'%'))
	AND (@name IS NULL OR (name LIKE '%'+@name+'%'))
	AND (@addressEmployee IS NULL OR (addressEmployee LIKE '%'+@addressEmployee+'%'))
	AND (@phone IS NULL OR (phone = @phone))
	AND (@email IS NULL OR (email LIKE '%'+@email+'%'))
	AND (@maxsalary IS NULL OR (salaryId in
	(
		SELECT tblsalary.salaryId
		FROM [ThoiTrang_CSDL].[dbo].[salary] as tblsalary
		INNER JOIN [ThoiTrang_CSDL].[dbo].[employee] as tblemployee
		ON tblemployee.salaryId = tblsalary.salaryId
		WHERE amount <= @maxsalary
	)
	)
	)
	AND (@minsalary IS NULL OR (salaryId in
	(
		SELECT tblsalary.salaryId
		FROM [ThoiTrang_CSDL].[dbo].[salary] as tblsalary
		INNER JOIN [ThoiTrang_CSDL].[dbo].[employee] as tblemployee
		ON tblemployee.salaryId = tblsalary.salaryId
		WHERE amount >= @minsalary
	)
	)
	)
END
GO
