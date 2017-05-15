USE [ThoiTrang_CSDL]
GO
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
CREATE PROCEDURE [dbo].[update_employee]
	@employeeId nvarchar(11)
	,@shopId nvarchar(7)
	,@roleId nvarchar(7) = NULL
	,@username varchar(100) = NULL
	,@pass varchar(100) = NULL
	,@name nvarchar(200) = NULL
	,@addressEmployee nvarchar(200) = NULL
	,@avatar varchar(200) = NULL
	,@phone varchar(100) = NULL
	,@salaryId nvarchar(9) = NULL
	,@email varchar(100) = NULL
	,@managerId nvarchar(11) = NULL
	,@dateStarted datetime = NULL
	,@dateEnded datetime = NULL
	,@creator nvarchar(11) = NULL
	,@note nvarchar(255) = NULL
	,@retired tinyint = NULL
	,@retiredBy nvarchar(11) = NULL
	,@retiredReason nvarchar(255) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    DECLARE @SQLQuery AS nvarchar(4000);
    DECLARE @ParamDefinition AS nvarchar(2000);
	SET @SQLQuery = 'UPDATE [ThoiTrang_CSDL].[dbo].[employee] SET [dateChanged] = GETDATE()';
    If @shopId IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [shopId] = @shopId';
    If @phone IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [phone] = @phone';
    If @roleId IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [roleId] = @roleId';
    If @username IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [username] = @username';
    If @pass IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [pass] = @pass';
    If @salaryId IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [salaryId] = @salaryId';
    If @managerId IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [managerId] = @managerId';
    If @dateStarted IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [dateStarted] = @dateStarted';
    If @dateEnded IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [dateEnded] = @dateEnded';
    If @retired IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [retired] = @retired';
    If @retiredBy IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [retiredBy] = @retiredBy';
    If @retiredReason IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [retiredReason] = @retiredReason';
    If @note IS NOT NULL 
         SET @SQLQuery = @SQLQuery + ', [note] = @note'
	SET @SQLQuery = @SQLQuery + ' WHERE [employeeId] = @employeeId';
	
	SET @ParamDefinition = '
	@employeeId nvarchar(11)
	,@shopId nvarchar(7)
	,@roleId nvarchar(7)
	,@username varchar(100)
	,@pass varchar(100)
	,@salaryId nvarchar(9)
	,@managerId nvarchar(11)
	,@dateStarted datetime
	,@dateEnded datetime
	,@creator nvarchar(11)
	,@note nvarchar(255)
	,@retired tinyint
	,@retiredBy nvarchar(11)
	,@retiredReason nvarchar(255)';
    Execute sp_Executesql @SQLQuery 
                ,@ParamDefinition
				,@employeeId
				,@shopId
				,@roleId
				,@username
				,@pass
				,@salaryId
				,@managerId
				,@dateStarted
				,@dateEnded
				,@creator
				,@note
				,@retired
				,@retiredBy
				,@retiredReason;
	PRINT @SQLQuery;

	IF(@shopId = 'shop001')
	BEGIN
		DECLARE @SQLQueryShop1 AS nvarchar(4000);
		DECLARE @ParamDefinitionShop1 AS nvarchar(2000);
		SET @SQLQueryShop1 = 'UPDATE [SRV_SHOP001].[ThoiTrang_CSDL].[dbo].[employee] SET ';
		If @name IS NOT NULL 
			 SET @SQLQueryShop1 = @SQLQueryShop1 + '[name] = @name,';
		If @addressEmployee IS NOT NULL 
			 SET @SQLQueryShop1 = @SQLQueryShop1 + '[addressEmployee] = @addressEmployee,';
		If @avatar IS NOT NULL 
			 SET @SQLQueryShop1 = @SQLQueryShop1 + '[avatar] = @avatar,';
		If @phone IS NOT NULL 
			 SET @SQLQueryShop1 = @SQLQueryShop1 + '[phone] = @phone,';
		If @email IS NOT NULL 
			 SET @SQLQueryShop1 = @SQLQueryShop1 + '[email] = @email,';
		SET @SQLQueryShop1 = SUBSTRING(@SQLQueryShop1, 0, LEN(@SQLQueryShop1));
		SET @SQLQueryShop1 = @SQLQueryShop1 + ' WHERE [employeeId] = @employeeId';
	
		SET @ParamDefinitionShop1 = '
		@employeeId nvarchar(11)
		,@name nvarchar(200)
		,@addressEmployee nvarchar(200)
		,@avatar varchar(200)
		,@phone varchar(100)
		,@email varchar(100)';
		PRINT @SQLQueryShop1;
		Execute sp_Executesql @SQLQueryShop1 
					,@ParamDefinitionShop1
					,@employeeId
					,@name
					,@addressEmployee
					,@avatar
					,@phone
					,@email;
			
	END
	ELSE IF(@shopId = 'shop002')
	BEGIN
		DECLARE @SQLQueryShop2 AS nvarchar(4000);
		DECLARE @ParamDefinitionShop2 AS nvarchar(2000);
		SET @SQLQueryShop2 = 'UPDATE [SRV_SHOP002].[ThoiTrang_CSDL].[dbo].[employee] SET ';
		If @name IS NOT NULL 
			 SET @SQLQueryShop2 = @SQLQueryShop2 + '[name] = @name,';
		If @addressEmployee IS NOT NULL 
			 SET @SQLQueryShop2 = @SQLQueryShop2 + '[addressEmployee] = @addressEmployee,';
		If @avatar IS NOT NULL 
			 SET @SQLQueryShop2 = @SQLQueryShop2 + '[avatar] = @avatar,';
		If @phone IS NOT NULL 
			 SET @SQLQueryShop2 = @SQLQueryShop2 + '[phone] = @phone,';
		If @email IS NOT NULL 
			 SET @SQLQueryShop2 = @SQLQueryShop2 + '[email] = @email,';
		SET @SQLQueryShop2 = SUBSTRING(@SQLQueryShop2, 0, LEN(@SQLQueryShop2));
		SET @SQLQueryShop2 = @SQLQueryShop2 + ' WHERE [employeeId] = @employeeId';
	
		SET @ParamDefinitionShop2 = '
		@employeeId nvarchar(11)
		,@name nvarchar(200)
		,@addressEmployee nvarchar(200)
		,@avatar varchar(200)
		,@phone varchar(100)
		,@email varchar(100)';
		Execute sp_Executesql @SQLQueryShop2 
					,@ParamDefinitionShop2
					,@employeeId
					,@name
					,@addressEmployee
					,@avatar
					,@phone
					,@email;
	END
	ELSE IF(@shopId = 'shop003')
	BEGIN
		DECLARE @SQLQueryShop3 AS nvarchar(4000);
		DECLARE @ParamDefinitionShop3 AS nvarchar(2000);
		SET @SQLQueryShop3 = 'UPDATE [ThoiTrang_CSDL].[dbo].[employee_public] SET ';
		If @name IS NOT NULL 
			 SET @SQLQueryShop3 = @SQLQueryShop3 + '[name] = @name,';
		If @addressEmployee IS NOT NULL 
			 SET @SQLQueryShop3 = @SQLQueryShop3 + '[addressEmployee] = @addressEmployee,';
		If @avatar IS NOT NULL 
			 SET @SQLQueryShop3 = @SQLQueryShop3 + '[avatar] = @avatar,';
		If @phone IS NOT NULL 
			 SET @SQLQueryShop3 = @SQLQueryShop3 + '[phone] = @phone,';
		If @email IS NOT NULL 
			 SET @SQLQueryShop3 = @SQLQueryShop3 + '[email] = @email,';
		SET @SQLQueryShop3 = SUBSTRING(@SQLQueryShop3, 0, LEN(@SQLQueryShop3));
		SET @SQLQueryShop3 = @SQLQueryShop3 + ' WHERE [employeeId] = @employeeId';
	
		SET @ParamDefinitionShop3 = '
		@employeeId nvarchar(11)
		,@name nvarchar(200)
		,@addressEmployee nvarchar(200)
		,@avatar varchar(200)
		,@phone varchar(100)
		,@email varchar(100)';
		Execute sp_Executesql @SQLQueryShop3 
					,@ParamDefinitionShop3
					,@employeeId
					,@name
					,@addressEmployee
					,@avatar
					,@phone
					,@email;
	END

    If @@ERROR <> 0 GoTo ErrorHandler
    Set NoCount OFF
    Return(0)
  
	ErrorHandler:
		Return(@@ERROR) 
END
