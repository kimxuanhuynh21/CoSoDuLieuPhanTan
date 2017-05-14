SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xuan
-- Create date: 26-Apr-2017
-- Description:24. Là nhân viên quản trị, tôi muốn cập nhật thông tin nhân viên
-- Location: Company
-- =============================================
CREATE PROCEDURE update_employee
	@employeeId nvarchar(11)
	,@shopId nvarchar(7)
	,@roleId nvarchar(7)
	,@username varchar(100)
	,@pass varchar(100)
	,@name nvarchar(200)
	,@addressEmployee nvarchar(200)
	,@avatar varchar(200)
	,@phone varchar(100)
	,@salaryId nvarchar(9)
	,@email varchar(100)
	,@managerId nvarchar(11)
	,@dateStarted datetime
	,@dateEnded datetime
	,@creator nvarchar(11)
	,@note nvarchar(255)
	,@retired tinyint
	,@retiredBy nvarchar(11)
	,@retiredReason nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [ThoiTrang_CSDL].[dbo].[employee]
		SET [shopId] = @shopId
			,[roleId] = @roleId
			,[username] = @username
			,[pass] = @pass
			,[salaryId] = @salaryId
			,[managerId] = @managerId
			,[dateStarted] = @dateStarted
			,[dateEnded] = @dateEnded
			,[creator] = @creator
			,[retired] = @retired
			,[retiredBy] = @retiredBy
			,[retiredReason] = @retiredReason
			,[dateChanged] = GETDATE()
			,[note] = @note
		WHERE [employeeId] = @employeeId

	IF(@shopId = 'shop001')
	BEGIN
		UPDATE [SRV_SHOP001].[ThoiTrang_CSDL].[dbo].[employee_public]
			SET [name] = @name
				,[addressEmployee] = @addressEmployee
				,[avatar] = @avatar
				,[phone] = @phone
				,[email] = @email
			WHERE [employeeId] = @employeeId
	END
	ELSE IF(@shopId = 'shop002')
	BEGIN
		UPDATE [SRV_SHOP002].[ThoiTrang_CSDL].[dbo].[employee_public]
			SET [name] = @name
				,[addressEmployee] = @addressEmployee
				,[avatar] = @avatar
				,[phone] = @phone
				,[email] = @email
			WHERE [employeeId] = @employeeId
	END
	ELSE IF(@shopId = 'shop003')
	BEGIN
		UPDATE [ThoiTrang_CSDL].[dbo].[employee_public]
			SET [name] = @name
				,[addressEmployee] = @addressEmployee
				,[avatar] = @avatar
				,[phone] = @phone
				,[email] = @email
			WHERE [employeeId] = @employeeId
	END

END
GO






